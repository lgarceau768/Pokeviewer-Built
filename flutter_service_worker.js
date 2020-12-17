'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "c9b76a7bed471b0b3260e378a0f4fa21",
"assets/assets/App-Store-QR.png": "9831529d19f0cd692c7c04e65fb3c1d1",
"assets/assets/App-Store.png": "ce13534d1db4f82b2dcf6a457c85dbd6",
"assets/assets/App-Store@2x.png": "74d462823373a10d94fa7b5e90cdab11",
"assets/assets/avatars/Group%252059631.png": "89744324f5e7d671215bb34e7263e6b6",
"assets/assets/avatars/Group%252059636.png": "38c7746d7281881cd21d9619616592a2",
"assets/assets/avatars/Group%252059637.png": "1afabb623b285cb1ef720ca3ec6e2f21",
"assets/assets/avatars/Group%25206965.png": "83ba070e01b1203928480e2b6741e649",
"assets/assets/avatars/Group%25206966.png": "42786e89d5c30c53ba6863e563a3b4f5",
"assets/assets/avatars/Group%25206967.png": "8e7689b5f51f0f88c63a9ed15ab195ac",
"assets/assets/avatars/Group%25206968.png": "930eb4991b52c08f0dbf04551fae2a1b",
"assets/assets/avatars/Group%25206969.png": "a2ae718d8f39ee5300f1e809acdcf779",
"assets/assets/avatars/Group%25206971.png": "c4dce16d76443ff958bcc1ccecbe9856",
"assets/assets/avatars/Group%25206973.png": "03795b1c5519039e9a9fff19b9d90425",
"assets/assets/avatars/Group%25206975.png": "83a1c3c24ea8c791718e0236e70c0205",
"assets/assets/avatars/Group%25206978.png": "c7685508e08d24826a0cd4a8e717dd14",
"assets/assets/B-Icon.png": "490fa2ad388ee668136503797eff3e60",
"assets/assets/B-Icon@2x.png": "5a703c0dc6ae3619e2061f253093abd3",
"assets/assets/bank.png": "a500ba39204924f197947cfda3db982a",
"assets/assets/BB_assets.zip": "04d0c3f64923fa44b5528a663ac51a6d",
"assets/assets/BIN-Screen.png": "c049186edb8a8316a29a11adf483e5e5",
"assets/assets/BIN-Screen@2x.png": "fd01192cbf458aea015b9ba32c2a9088",
"assets/assets/bin-tutorial.png": "f13272fa4a44eb663e56985a2e883b51",
"assets/assets/BKG.png": "f49df5f068d616c520e767f19f4d525c",
"assets/assets/Builder-Screen.png": "2115ff6830754258ca6692843f0b2b2b",
"assets/assets/Builder-Screen@2x.png": "6bc6124f5bffb5d38434f8a05e327906",
"assets/assets/Component%252053%2520%25E2%2580%2593%25209.png": "81826192ed27cb90d1ce368d449a0db1",
"assets/assets/Component%252053%2520%25E2%2580%2593%25209@2x.png": "661904557c6226a3c3247c184200d807",
"assets/assets/CS-Screen.png": "395ea7566fd4fffb0dd08257b0f83309",
"assets/assets/CS-Screen@2x.png": "deb6d99d3aec0353617c345527b076e7",
"assets/assets/designer-tutorial.png": "34ad789734b4aef7a4fb2645ec371a52",
"assets/assets/G-Play-QR.png": "de3a71b7a7fc61cfd5cf2b8318474d7e",
"assets/assets/G-Play.png": "ef498b8eaa6fe05a86a887e73e88a302",
"assets/assets/G-Play@2x.png": "b9b675cd18c97325ed41b940fa4f665c",
"assets/assets/index.png": "d538c5ea058cff62a50f4753bdf25b0d",
"assets/assets/M-D-V-Screen.png": "adfffa30fe4c16ef972d847433e561a7",
"assets/assets/M-D-V-Screen@2x.png": "ecf1e7f0383fafdb8ea6081286a827b1",
"assets/assets/market-tutorial.png": "1d91e3cf90bc059adf56d738672a86b7",
"assets/assets/MarketPlace-Screen.png": "dd5b6c0a60ea410d59a588dae460eab2",
"assets/assets/MarketPlace-Screen@2x.png": "20cbef5c353b8a94c79db473143e0ff4",
"assets/assets/Mask%252520Group%25252039.png": "60c6fc35dad63bd7c6d58039f8cea1e9",
"assets/assets/Mask%252520Group%25252039@2x.png": "ff6250c6da40990b7ff62ab8e1ae0944",
"assets/assets/p-logo.jpg": "d33f39f4b415a259f848336ad5a07681",
"assets/assets/p-logo.png": "c9be03a89887b692e6a147a80bfaf082",
"assets/assets/Placeholder.png": "51ed7dd09c7ffeeda4908fd1936e37be",
"assets/assets/priavcy.pdf": "25b409de7a218dfc7d6523839fb2626c",
"assets/assets/privacy%2520policy%2520main.docx": "66ebe2c5e3487bf73c17c88e1c8b2f30",
"assets/assets/SBS-Screen.png": "73991946aaa22461b9633d65588f421b",
"assets/assets/SBS-Screen@2x.png": "fb25a1e8fa3278e0c883513c7cd8f4c3",
"assets/assets/Scan-Screen.png": "e95c625848d9b2b6a93ff4e91d3ac337",
"assets/assets/Scan-Screen@2x.png": "06e5c3aed1967aa60e43ed2fc38ff3b7",
"assets/assets/scan-tutorial.png": "e2dbcbf93ba13d280a51ee4e631b2b16",
"assets/assets/scan.png": "844f86242df228b342df016310421e68",
"assets/assets/share.png": "55654c3b78e1180d0087d5fd92d0fb69",
"assets/assets/sign-tutorial.png": "79eb9f495d603087ce5a1b2fa4b93fed",
"assets/assets/slider/1.png": "2525d7bbe8be01191ffe150b7cfedb37",
"assets/assets/slider/2.png": "182aba7213296a5bdf5ec059ca3609fe",
"assets/assets/slider/3.png": "3bfc02fbf947cb3dd3fe967eb9527b82",
"assets/assets/slider/4.png": "c8c6dc8509d8d3d2dda2cd4cf877edd6",
"assets/assets/slider/5.png": "cb54f8e2c75750c3ac8d4b894477b644",
"assets/assets/slider/6.png": "23c2f692a8613e791a8c4ae3bb778459",
"assets/assets/slider/7.png": "c07dfbd60ba3fb36576c68aa1b668479",
"assets/assets/slider/8.png": "9ea2b78a39d2f87d23879440e053a5d0",
"assets/assets/slider/9.png": "4a1a14214ed95791025addf3c835b719",
"assets/assets/slider/Camera%25202.png": "8caa64adf08effe6ac04a8d194724943",
"assets/assets/slider/Camera%25203.png": "98d28f2e1cf69d65b8021a80f1754fcb",
"assets/assets/slider/Camera%2520Bin-Tag.png": "65d685bec5cbb8520247f70ca16612b2",
"assets/assets/slider/Camera%2520Details.png": "56034b297a64ddb8112f02f7a0758020",
"assets/assets/slider/HomeScreen%2520Pieces.png": "80667a5821e2237f336b84f970cfff91",
"assets/assets/slider/LogingScreen.png": "eb8458934aba9048f4bc5f74d12e2a63",
"assets/assets/slider/Marketplace%25202.png": "42d66b008a6a24c130354281cf2aabcf",
"assets/assets/slider/Marketplace%2520Description%25202.png": "0f35540dc9ad7f13195a9b9dc05df4dc",
"assets/assets/slider/Marketplace%2520Set%2520Details.png": "5bbce6bd1d0b5e31e35ac74468bd4d07",
"assets/assets/slider/Marketplace%2520Set.png": "f9f260120afac1ef7f7ded0887ab540c",
"assets/assets/slider/MyVault%2520Black%2520Filter.png": "8bf7409a539c3aebcd1a892bf3bd4e32",
"assets/assets/slider/MyVault%2520Details.png": "ad95679a80acb7128bbfafa8a27d9aa0",
"assets/assets/slider/MyVault%2520Set%2520Finder.png": "d9b478fe0f8066478dc0c746a350e7d6",
"assets/assets/slider/MyVault%2520Stats.png": "676f06c83580cf905edcc18b2b21ae68",
"assets/assets/slider/Registration%2520Process.png": "ca01f6e2f104a04f195a35867bafeff1",
"assets/assets/slider/Settings.png": "6a5d86688d6d5c22867a1e927acacc45",
"assets/assets/Text.png": "960cd6cb0ff61c993fe89e5dc68790d8",
"assets/assets/Text@2x.png": "5f9c836dbcf446c4d6aa785f1eaefd3a",
"assets/assets/Vault-Screen.png": "19245655682827c7f6cec48662d0d359",
"assets/assets/Vault-Screen@2x.png": "69e6f48cc7dc5b0911f5d74aba067a4b",
"assets/assets/vault-tutorial.png": "2110acbeca63d112fbb23649a08c8512",
"assets/font/Muli-Bold.ttf": "1e36ee6d50c037b1bb4bdd3effa7a28e",
"assets/font/Muli.ttf": "df7330254513d2fa2f4c1e9ee98cc6c6",
"assets/FontManifest.json": "8c9e10d8285d7893ef8c34a87cb2a693",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "44a563a92a6c05b965d1661b569d0175",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "831eb40a2d76095849ba4aecd4340f19",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a126c025bab9a1b4d8ac5534af76a208",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "d80ca32233940ebadc5ae5372ccd67f9",
"favicon.png": "c3fe12978e6bf047d89ef4a7e3bd2db1",
"icons/Icon-192.png": "c3fe12978e6bf047d89ef4a7e3bd2db1",
"icons/Icon-512.png": "45aeca70e674ef482173e934869cee3b",
"index.html": "424b278eadc1a39975fcd5e8a83341df",
"/": "424b278eadc1a39975fcd5e8a83341df",
"main.dart.js": "aa84ffade3d424aa2b755388815d8526",
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
