'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "c3fcbaa4cde9ba88e5aa0ff51cab277d",
"assets/assets/App-Store-QR.png": "ca082b9da9c15f6da831ad8297a7f733",
"assets/assets/App-Store.png": "ea688f5dbc3d995f89ff01f53c10544e",
"assets/assets/App-Store@2x.png": "b38a4bfdf76b8c030cafa934428cc976",
"assets/assets/B-Icon.png": "094ed85cc614b178b8351fd0b60a9913",
"assets/assets/B-Icon@2x.png": "05a9a64329d509bd795549d27504442e",
"assets/assets/BKG.png": "7f25c92b1ddfb4b2e76087e683ec98a0",
"assets/assets/Builder-Screen.png": "57a6fe852125c13bef3b03be2602b016",
"assets/assets/Builder-Screen@2x.png": "4789a069387a0c0a2dec99da0f5b66a3",
"assets/assets/CS-Screen.png": "58db32d48615d7dc1fc0a8c801402c5b",
"assets/assets/CS-Screen@2x.png": "b2d58336d8437897bf382f87056f663e",
"assets/assets/G-Play-QR.png": "cf5fff10b0786225db0f970f1a6fb545",
"assets/assets/G-Play.png": "53113c476d410b3034d4284218f738cb",
"assets/assets/G-Play@2x.png": "6dcaa92abf1aad896f610104c56f8201",
"assets/assets/M-D-V-Screen.png": "b07b22d88a95c719fe817c2c4b951813",
"assets/assets/M-D-V-Screen@2x.png": "31c3644c86073713da796f55771d2ce5",
"assets/assets/MarketPlace-Screen.png": "953fdc3a136c138802d12a0e3304a44c",
"assets/assets/MarketPlace-Screen@2x.png": "491103ad314ce4414402893142c080dd",
"assets/assets/Mask%2520Group%252039.png": "5627ffefaf63e5b96d49f934c4f07d5c",
"assets/assets/Mask%2520Group%252039@2x.png": "98cb4d6c9aa5f9d536bd7b936155dcdd",
"assets/assets/Placeholder.png": "e9f4ab0954ee0ba53123edf532f2e1ed",
"assets/assets/Scan-Screen.png": "639d92cd521a37a4d7b2f92e2fd2462e",
"assets/assets/Scan-Screen@2x.png": "7605de2f93a82dc797a6139335c02042",
"assets/assets/Squares-Color.png": "b93c648a71e4b19e03e6fc9ca1b769dc",
"assets/assets/Squares-Color@2x.png": "85270550eab1545bd112cc51160fb52f",
"assets/assets/Text.png": "4607333970bfb0f01729f339cf9eb10a",
"assets/assets/Text@2x.png": "a79d3904bcf958b08546cbe876ac9e2e",
"assets/assets/Vault-Screen.png": "3ed19f722cc6dd96e666cb2c62336ac2",
"assets/assets/Vault-Screen@2x.png": "5216a1b4d1cf22b1a0f1a3305ffe53ba",
"assets/font/Muli-Bold.ttf": "1e36ee6d50c037b1bb4bdd3effa7a28e",
"assets/font/Muli.ttf": "df7330254513d2fa2f4c1e9ee98cc6c6",
"assets/FontManifest.json": "8c9e10d8285d7893ef8c34a87cb2a693",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "91c0b70a2ef4348238e8050efb918483",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "831eb40a2d76095849ba4aecd4340f19",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a126c025bab9a1b4d8ac5534af76a208",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "d80ca32233940ebadc5ae5372ccd67f9",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "c3fe12978e6bf047d89ef4a7e3bd2db1",
"icons/Icon-512.png": "45aeca70e674ef482173e934869cee3b",
"index.html": "48fee9ce85dd5e5589107bf6b729b4cb",
"/": "48fee9ce85dd5e5589107bf6b729b4cb",
"main.dart.js": "adad56652f31a7e4352361ab60690a67",
"manifest.json": "828908ed76f6de28e7976e89d01a75e2",
"version.json": "281f2a7b1646c3dea6feea25f04fa556"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
