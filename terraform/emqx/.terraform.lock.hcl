# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is maintained automatically by "terraform init".
# Manual edits may be lost in future updates.

provider "registry.terraform.io/hashicorp/external" {
  version     = "2.3.1"
  constraints = ">= 2.2.2"
  hashes = [
    "h1:bROCw6g5D/3fFnWeJ01L4IrdnJl1ILU8DGDgXCtYzaY=",
    "zh:001e2886dc81fc98cf17cf34c0d53cb2dae1e869464792576e11b0f34ee92f54",
    "zh:2eeac58dd75b1abdf91945ac4284c9ccb2bfb17fa9bdb5f5d408148ff553b3ee",
    "zh:2fc39079ba61411a737df2908942e6970cb67ed2f4fb19090cd44ce2082903dd",
    "zh:472a71c624952cff7aa98a7b967f6c7bb53153dbd2b8f356ceb286e6743bb4e2",
    "zh:4cff06d31272aac8bc35e9b7faec42cf4554cbcbae1092eaab6ab7f643c215d9",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:7ed16ccd2049fa089616b98c0bd57219f407958f318f3c697843e2397ddf70df",
    "zh:842696362c92bf2645eb85c739410fd51376be6c488733efae44f4ce688da50e",
    "zh:8985129f2eccfd7f1841ce06f3bf2bbede6352ec9e9f926fbaa6b1a05313b326",
    "zh:a5f0602d8ec991a5411ef42f872aa90f6347e93886ce67905c53cfea37278e05",
    "zh:bf4ab82cbe5256dcef16949973bf6aa1a98c2c73a98d6a44ee7bc40809d002b8",
    "zh:e70770be62aa70198fa899526d671643ff99eecf265bf1a50e798fc3480bd417",
  ]
}

provider "registry.terraform.io/hashicorp/google" {
  version     = "4.62.1"
  constraints = ">= 3.53.0, 4.62.1, < 5.0.0"
  hashes = [
    "h1:1zH3V4b71z8pbYvKhOJhILst3qRhPlV8Wc9E44JU2Q0=",
    "zh:15cb2755054d99ec0d7919f52f1a8a08c018d3f076a46251c5b0382f94337cdf",
    "zh:2286d2d182dd3df835665e8bb591ab72ed75af83a822ed91e44ed02d02e399d1",
    "zh:2507695cd914fe08cccb2c6fd7ff0a1f566647fd733b89ba83396d8bbac1d4b7",
    "zh:256a120ba34df742d328af2d8d2152a3f709eb8de571acec412b814d12b83c80",
    "zh:45f19aced5d9f597d8f7d63b7ca980aa3d0f58c342bc56aec8cbe0321955cc06",
    "zh:6eef7ba36ad5cf011f1d8b6f16dc84ea93f3f0b19df209f3bd1c694414529e04",
    "zh:739a0ab7647153c9b555d3e68b56f746bef17d822969124108775473ca375bfe",
    "zh:c5eb04297d298d75592d7671d4c707fdb3a7367aa1c2720c042b6f018268c0e1",
    "zh:d227ca244766b76913f70639c612d1e6b7a996484ad4177f41a5316fddf26594",
    "zh:dca333c358afe417d3f0610c2b89fc7e3741260a82f9626bcd1006e9016e3eff",
    "zh:ebfe6d76660341ea11c120dc2d1780fffed415cfb9b514421cb12963d6f8ac69",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/hashicorp/google-beta" {
  version     = "4.66.0"
  constraints = "4.66.0"
  hashes = [
    "h1:XtqlwIAHBxwgKaqZ3OuoHzqPImGRiXjZHpm8ur9xSJ4=",
    "zh:253391f3b3cc9c6908b9fcbb8704e423071121fef476d5de824a187df76924a0",
    "zh:2fb223b4fba1fcccb02cc3d0d5103fdf687a722b461828b3885043dd643f8efd",
    "zh:6ca0094c20f4e9f25f11ab016f0b54fcfd62076ea30bb43d4c69d52633a0cfb8",
    "zh:757ffff89a521073c8fa7f663cf3d9d20629d6e72b837b74c0221bcf34531cfd",
    "zh:7d1459b9b3bd9e0dc887b9c476cfa58e2cbb7d56d5ffdeaec0fdd535a38373d4",
    "zh:92ad7a5489cd3f51b69c0136095d94f3092c8c7e0d5c8befe1ff53c18761aade",
    "zh:9f477e3dbaac8302160bfcfb9c064de72eb6776130a5671380066ac2e84ceae8",
    "zh:d1580b146b16d56ccd18a1bbc4a4cac2607e37ed5baf6290cc929f5c025bf526",
    "zh:d30d5b3ebd6c4123a53cef4c7c6606b06d27f1cb798b387b9a65b55f8c7b6b9f",
    "zh:e3cdc92f111499702f7a807fe6cf8873714939efc05b774cfbde76b8a199da46",
    "zh:f2cd44444b6d7760a8a6deaf54ca67ae3696d3f5640b107ad7be91dde8a60c25",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/hashicorp/helm" {
  version     = "2.9.0"
  constraints = "2.9.0"
  hashes = [
    "h1:D5BLFN82WndhQZQleXE5rO0hUDnlyqb60XeUJKDhuo4=",
    "zh:1471cb45908b426104687c962007b2980cfde294fa3530fabc4798ce9fb6c20c",
    "zh:1572e9cec20591ec08ece797b3630802be816a5adde36ca91a93359f2430b130",
    "zh:1b10ae03cf5ab1ae21ffaac2251de99797294ae4242b156b3b0beebbdbcb7e0f",
    "zh:3bd043b68de967d8d0b549d3f71485193d81167d5656f5507d743dedfe60e352",
    "zh:538911921c729185900176cc22eb8edcb822bc8d22b9ebb48103a1d9bb53cc38",
    "zh:69a6a2d40c0463662c3fb1621e37a3ee65024ea4479adf4d5f7f19fb0dea48c2",
    "zh:94b58daa0c351a49d01f6d8f1caae46c95c2d6c3f29753e2b9ea3e3c0e7c9ab4",
    "zh:9d0543331a4a32241e1ab5457f30b41df745acb235a0391205c725a5311e4809",
    "zh:a6789306524ca121512a95e873e3949b4175114a6c5db32bed2df2551a79368f",
    "zh:d146b94cd9502cca7f2044797a328d71c7ec2a98e2d138270d8a28c872f04289",
    "zh:d14ccd14511f0446eacf43a9243f22de7c1427ceb059cf67d7bf9803be2cb15d",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/hashicorp/kubernetes" {
  version     = "2.19.0"
  constraints = "2.19.0"
  hashes = [
    "h1:soxnBBEH2yLFS0xyALi7J8KQ4u7eQzEYIGvkDyyYCcU=",
    "zh:028d346460de2d1d19b4c863dfc36be51c7bcd97d372b54a3a946bcb19f3f613",
    "zh:391d0b38c455437d0a2ab1beb6ce6e1230aa4160bbae11c58b2810b258b44280",
    "zh:40ea742f91b67f66e71d7091cfd40cc604528c4947651924bd6d8bd8d9793708",
    "zh:48a99d341c8ba3cadaafa7cb99c0f11999f5e23f5cfb0f8469b4e352d9116e74",
    "zh:4a5ade940eff267cbf7dcd52c1a7ac3999e7cc24996a409bd8b37bdb48a97f02",
    "zh:5063742016a8249a4be057b9cc0ef24a684ec76d0ae5463d4b07e9b2d21e047e",
    "zh:5d36b3a5662f840a6788f5e2a19d02139e87318feb3c5d82c7d076be1366fec4",
    "zh:75edd9960cb30e54ef7de1b7df2761a274f17d4d41f54e72f86b43f41af3eb6d",
    "zh:b85cadef3e6f25f1a10a617472bf5e8449decd61626733a1bc723de5edc08f64",
    "zh:dc565b17b4ea6dde6bd1b92bc37e5e850fcbf9400540eec00ad3d9552a76ac2e",
    "zh:deb665cc2123f2701aa3d653987b2ca35fb035a08a76a2382efb215c209f19a5",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/hashicorp/local" {
  version     = "2.4.0"
  constraints = "2.4.0"
  hashes = [
    "h1:R97FTYETo88sT2VHfMgkPU3lzCsZLunPftjSI5vfKe8=",
    "zh:53604cd29cb92538668fe09565c739358dc53ca56f9f11312b9d7de81e48fab9",
    "zh:66a46e9c508716a1c98efbf793092f03d50049fa4a83cd6b2251e9a06aca2acf",
    "zh:70a6f6a852dd83768d0778ce9817d81d4b3f073fab8fa570bff92dcb0824f732",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:82a803f2f484c8b766e2e9c32343e9c89b91997b9f8d2697f9f3837f62926b35",
    "zh:9708a4e40d6cc4b8afd1352e5186e6e1502f6ae599867c120967aebe9d90ed04",
    "zh:973f65ce0d67c585f4ec250c1e634c9b22d9c4288b484ee2a871d7fa1e317406",
    "zh:c8fa0f98f9316e4cfef082aa9b785ba16e36ff754d6aba8b456dab9500e671c6",
    "zh:cfa5342a5f5188b20db246c73ac823918c189468e1382cb3c48a9c0c08fc5bf7",
    "zh:e0e2b477c7e899c63b06b38cd8684a893d834d6d0b5e9b033cedc06dd7ffe9e2",
    "zh:f62d7d05ea1ee566f732505200ab38d94315a4add27947a60afa29860822d3fc",
    "zh:fa7ce69dde358e172bd719014ad637634bbdabc49363104f4fca759b4b73f2ce",
  ]
}

provider "registry.terraform.io/hashicorp/null" {
  version = "3.2.1"
  hashes = [
    "h1:FbGfc+muBsC17Ohy5g806iuI1hQc4SIexpYCrQHQd8w=",
    "zh:58ed64389620cc7b82f01332e27723856422820cfd302e304b5f6c3436fb9840",
    "zh:62a5cc82c3b2ddef7ef3a6f2fedb7b9b3deff4ab7b414938b08e51d6e8be87cb",
    "zh:63cff4de03af983175a7e37e52d4bd89d990be256b16b5c7f919aff5ad485aa5",
    "zh:74cb22c6700e48486b7cabefa10b33b801dfcab56f1a6ac9b6624531f3d36ea3",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:79e553aff77f1cfa9012a2218b8238dd672ea5e1b2924775ac9ac24d2a75c238",
    "zh:a1e06ddda0b5ac48f7e7c7d59e1ab5a4073bbcf876c73c0299e4610ed53859dc",
    "zh:c37a97090f1a82222925d45d84483b2aa702ef7ab66532af6cbcfb567818b970",
    "zh:e4453fbebf90c53ca3323a92e7ca0f9961427d2f0ce0d2b65523cc04d5d999c2",
    "zh:e80a746921946d8b6761e77305b752ad188da60688cfd2059322875d363be5f5",
    "zh:fbdb892d9822ed0e4cb60f2fedbdbb556e4da0d88d3b942ae963ed6ff091e48f",
    "zh:fca01a623d90d0cad0843102f9b8b9fe0d3ff8244593bd817f126582b52dd694",
  ]
}

provider "registry.terraform.io/hashicorp/random" {
  version = "3.5.1"
  hashes = [
    "h1:VSnd9ZIPyfKHOObuQCaKfnjIHRtR7qTw19Rz8tJxm+k=",
    "zh:04e3fbd610cb52c1017d282531364b9c53ef72b6bc533acb2a90671957324a64",
    "zh:119197103301ebaf7efb91df8f0b6e0dd31e6ff943d231af35ee1831c599188d",
    "zh:4d2b219d09abf3b1bb4df93d399ed156cadd61f44ad3baf5cf2954df2fba0831",
    "zh:6130bdde527587bbe2dcaa7150363e96dbc5250ea20154176d82bc69df5d4ce3",
    "zh:6cc326cd4000f724d3086ee05587e7710f032f94fc9af35e96a386a1c6f2214f",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:b6d88e1d28cf2dfa24e9fdcc3efc77adcdc1c3c3b5c7ce503a423efbdd6de57b",
    "zh:ba74c592622ecbcef9dc2a4d81ed321c4e44cddf7da799faa324da9bf52a22b2",
    "zh:c7c5cde98fe4ef1143bd1b3ec5dc04baf0d4cc3ca2c5c7d40d17c0e9b2076865",
    "zh:dac4bad52c940cd0dfc27893507c1e92393846b024c5a9db159a93c534a3da03",
    "zh:de8febe2a2acd9ac454b844a4106ed295ae9520ef54dc8ed2faf29f12716b602",
    "zh:eab0d0495e7e711cca367f7d4df6e322e6c562fc52151ec931176115b83ed014",
  ]
}
