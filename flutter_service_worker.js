'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"main.dart.js": "dee08102e8484231b9e1bb790976885d",
"splash/img/light-3x.png": "4c7e97ed83bb7e03abb118e0ae9aa85e",
"splash/img/branding-dark-1x.gif": "cb34244721fadd6ca425f4c73b8693b3",
"splash/img/branding-dark-2x.gif": "3d479f5a2e117b2da2bb88b3e558a01e",
"splash/img/branding-2x.gif": "3d479f5a2e117b2da2bb88b3e558a01e",
"splash/img/branding-3x.gif": "8ee814e9fcf0993870b33330ed253066",
"splash/img/branding-dark-3x.gif": "8ee814e9fcf0993870b33330ed253066",
"splash/img/light-1x.png": "4935bb920834075317e3c74fdaa13670",
"splash/img/branding-4x.gif": "b14baaf0b4f8c458844c4da8473dd7e9",
"splash/img/light-2x.png": "373ac44386ad040af733a200f549f48b",
"splash/img/branding-dark-4x.gif": "b14baaf0b4f8c458844c4da8473dd7e9",
"splash/img/dark-3x.png": "4c7e97ed83bb7e03abb118e0ae9aa85e",
"splash/img/dark-1x.png": "4935bb920834075317e3c74fdaa13670",
"splash/img/dark-4x.png": "be41f66e78cacd74cb6e0b353e1c4de4",
"splash/img/light-4x.png": "be41f66e78cacd74cb6e0b353e1c4de4",
"splash/img/dark-2x.png": "373ac44386ad040af733a200f549f48b",
"splash/img/branding-1x.gif": "cb34244721fadd6ca425f4c73b8693b3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "ced7bacab2b203df15424818076fd545",
"assets/fonts/MaterialIcons-Regular.otf": "956fc8cb4d7a415a9f3c476167d604e2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/assets/images/gif/loading.gif": "2e8abbea3b9cd30babf62235a2d74cc5",
"assets/assets/images/svg/overview.svg": "69da051cdf3b1cd71b0deaa7f3b34599",
"assets/assets/images/svg/linkedin.svg": "6827a1fb8c26d28d51e7e08bddfbd764",
"assets/assets/images/svg/service.svg": "e8efd7ee95e59bc67b847ac1a3a0cfc9",
"assets/assets/images/svg/career.svg": "760d953c4887306cc46c56186572c030",
"assets/assets/images/svg/application.svg": "162299b13cc969cb0b4b1cf4704bd7af",
"assets/assets/images/png/splash.png": "c28d128a658ef45be64180e51a94e4b2",
"assets/assets/images/png/project.png": "a6f60815b737d6a9de873c20a245c426",
"assets/assets/images/png/code_review.png": "cdf326c2360caae85ef168dadfd0ad19",
"assets/assets/images/png/problem_solving.png": "6a1b795fa00e265ca8a97b624bba56a1",
"assets/assets/images/png/leadership.png": "52fe91a88c29c845288e63f17aceff7b",
"assets/assets/images/png/communication.png": "89b0a4e331cb6eba93b84359a7c03be3",
"assets/assets/images/png/logo.png": "4679511a3357a6623e1f16a4f8e89599",
"assets/assets/images/jpg/user.jpg": "ca0c874e07c75100eeb3be8e39dbd654",
"assets/NOTICES": "ce1a8394317db91fc4aaf48dcaf8f817",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "174ddbed90d67d0500a1f5961d7fc481",
"assets/AssetManifest.bin.json": "f2ed8b9759f26d5da2bdb9dd61ffcd35",
"index.html": "2a9971605939d1056af0c5f142f52a85",
"/": "2a9971605939d1056af0c5f142f52a85",
"manifest.json": "af746ae2350b57f51dbbb6f148d229c4",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"icons/Icon-maskable-192.png": "b14a56909988c3f5f2bdbf7bf61893b0",
"icons/Icon-192.png": "b14a56909988c3f5f2bdbf7bf61893b0",
"icons/Icon-512.png": "4d14966ef55d750e3d7da8c5102d59e6",
"icons/Icon-maskable-512.png": "4d14966ef55d750e3d7da8c5102d59e6",
"favicon.png": "583efe139bb9c6e0f074b0144632006f",
"version.json": "536dc42524442522d15a255b5eeebed3",
"flutter_bootstrap.js": "710ec8c302406904729678bfa6ccb965"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
  for (var resourceKey of Object.keys(RESOURCES)) {
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
