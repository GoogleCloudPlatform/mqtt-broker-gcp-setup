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
  version = "2.2.3"
  hashes = [
    "h1:uvOYRWcVIqOZSl8YjjaB18yZFz1AWIt2CnK7O45rckg=",
    "zh:184ecd339d764de845db0e5b8a9c87893dcd0c9d822167f73658f89d80ec31c9",
    "zh:2661eaca31d17d6bbb18a8f673bbfe3fe1b9b7326e60d0ceb302017003274e3c",
    "zh:2c0a180f6d1fc2ba6e03f7dfc5f73b617e45408681f75bca75aa82f3796df0e4",
    "zh:4b92ae44c6baef4c4952c47be00541055cb5280dd3bc8031dba5a1b2ee982387",
    "zh:5641694d5daf3893d7ea90be03b6fa575211a08814ffe70998d5adb8b59cdc0a",
    "zh:5bd55a2be8a1c20d732ac9c604b839e1cadc8c49006315dffa4d709b6874df32",
    "zh:6e0ef5d11e1597202424b7d69b9da7b881494c9b13a3d4026fc47012dc651c79",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:9e19f89fa25004d3b926a8d15ea630b4bde62f1fa4ed5e11a3d27aabddb77353",
    "zh:b763efdd69fd097616b4a4c89cf333b4cee9699ac6432d73d2756f8335d1213f",
    "zh:e3b561efdee510b2b445f76a52a902c52bee8e13095e7f4bed7c80f10f8d294a",
    "zh:fe660bb8781ee043a093b9a20e53069974475dcaa5791a1f45fd03c61a26478a",
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
  version     = "4.62.1"
  constraints = "4.62.1"
  hashes = [
    "h1:gmGmbZvusMtH6fPOdypy/Khn6OUqHcEKpDZLg3Y7BQw=",
    "zh:2e5e9e93bec0173bd4c481ca5aeb2e8da35014adef2901158e50487910292229",
    "zh:419bce95a1c5b7adbe18255b0bc82baa8a5b644945ac108c8db88de62e7f62a0",
    "zh:4e75c441cfaa7c96f62f73fd450ff87274d726cea79365a11ef66ed93a6bb03f",
    "zh:622b7e76aae89cf6b65df1677001cee8bf2fc295011d7636d02df1e9cf29ba27",
    "zh:69ed7db177c53a0599b3990c392f58a55c57b39f40e7da0e33c6638eafdad1b8",
    "zh:7ff379b525cac7a2d12b0cb1fd5ef29d908fed084699fdb02fda435c2b6c4cf6",
    "zh:9aa1821e020dc6575957507e44141709b9f80fa7595cb8d22f61d40451f38060",
    "zh:a502e6e49bb27dd9607da9aee8329059cfa98695999d9601320429c57fe28c51",
    "zh:ceb803ce79830568439253842e0897dc7b2e99c488d3848ac948da515ad24df8",
    "zh:ea95a957f6c1bf20eda2efbe8db114ca4834f72f255c4f22f3f463da8738af80",
    "zh:f4a4503443a6e07baaa4a9dd1965265dce0d31601a068df84c7a0e3cf1d61a84",
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
  version = "2.3.0"
  hashes = [
    "h1:+l9ZTDGmGdwnuYI5ftUjwP8UgoLw4f4V9xoCzal4LW0=",
    "zh:1f1920b3f78c31c6b69cdfe1e016a959667c0e2d01934e1a084b94d5a02cd9d2",
    "zh:550a3cdae0ddb350942624e7b2e8b31d28bc15c20511553432413b1f38f4b214",
    "zh:68d1d9ccbfce2ce56b28a23b22833a5369d4c719d6d75d50e101a8a8dbe33b9b",
    "zh:6ae3ad6d865a906920c313ec2f413d080efe32c230aca711fd106b4cb9022ced",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:a0f413d50f54124057ae3dcd9353a797b84e91dc34bcf85c34a06f8aef1f9b12",
    "zh:a2ac6d4088ceddcd73d88505e18b8226a6e008bff967b9e2d04254ef71b4ac6b",
    "zh:a851010672e5218bdd4c4ea1822706c9025ef813a03da716d647dd6f8e2cffb0",
    "zh:aa797561755041ef2fad99ee9ffc12b5e724e246bb019b21d7409afc2ece3232",
    "zh:c6afa960a20d776f54bb1fc260cd13ead17280ebd87f05b9abcaa841ed29d289",
    "zh:df0975e86b30bb89717b8c8d6d4690b21db66de06e79e6d6cfda769f3304afe6",
    "zh:f0d3cc3da72135efdbe8f4cfbfb0f2f7174827887990a5545e6db1981f0d3a7c",
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
  version = "3.4.3"
  hashes = [
    "h1:xZGZf18JjMS06pFa4NErzANI98qi59SEcBsOcS2P2yQ=",
    "zh:41c53ba47085d8261590990f8633c8906696fa0a3c4b384ff6a7ecbf84339752",
    "zh:59d98081c4475f2ad77d881c4412c5129c56214892f490adf11c7e7a5a47de9b",
    "zh:686ad1ee40b812b9e016317e7f34c0d63ef837e084dea4a1f578f64a6314ad53",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:84103eae7251384c0d995f5a257c72b0096605048f757b749b7b62107a5dccb3",
    "zh:8ee974b110adb78c7cd18aae82b2729e5124d8f115d484215fd5199451053de5",
    "zh:9dd4561e3c847e45de603f17fa0c01ae14cae8c4b7b4e6423c9ef3904b308dda",
    "zh:bb07bb3c2c0296beba0beec629ebc6474c70732387477a65966483b5efabdbc6",
    "zh:e891339e96c9e5a888727b45b2e1bb3fcbdfe0fd7c5b4396e4695459b38c8cb1",
    "zh:ea4739860c24dfeaac6c100b2a2e357106a89d18751f7693f3c31ecf6a996f8d",
    "zh:f0c76ac303fd0ab59146c39bc121c5d7d86f878e9a69294e29444d4c653786f8",
    "zh:f143a9a5af42b38fed328a161279906759ff39ac428ebcfe55606e05e1518b93",
  ]
}
