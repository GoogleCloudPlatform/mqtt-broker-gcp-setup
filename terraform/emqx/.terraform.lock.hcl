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
  version     = "4.51.0"
  constraints = "4.51.0"
  hashes = [
    "h1:eSnVMrHFd8XFIXYzo2DImTfY2192ygfvrxoDbKXc3+M=",
    "zh:1533c31173b4789415e90cf68bace4e2443f7e3b2e45d81030cf2b9d552c1408",
    "zh:1bae9b52367718a4e334b797655325709e2ef6f6289f1fb3605fc1bf2a303a69",
    "zh:3c0cbf3916471a11c3094753ff8d0c622e0a9c90d9ce61c88cc9b65808a5958f",
    "zh:5967fd1813193101eebc53d22e5ec90388439dd2fea557a0470194b0acc69bad",
    "zh:67dc7a06d6ce97cbc56e8bd542de479bc3de23dfed1f7212014c7c4a97708af2",
    "zh:72dc56612d386cb022150d53bb5ff0a50fc2fe63b4d7ed1ea18d509250b2c093",
    "zh:8757dfd226e91c00595318ca87c8fbf36add746ae7d2b86120709c7ebde3d949",
    "zh:b1c28197e1a74af768a1fd6c4e828a493fce0e663e4806e7f30448b73f4a68bd",
    "zh:b4a07979901d1be45169b519f615022b18cde4658fbcda52c4039c181c7e5793",
    "zh:b85ac442a95b57e632ff8470938d34b3bf0efe40dfec893e2538da7de93b3ea5",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
    "zh:fe818cfe3ab69e15178b4c4e8915eda0fd0e33e5fd49408aa2541c2c1a46a8bf",
  ]
}

provider "registry.terraform.io/hashicorp/helm" {
  version     = "2.8.0"
  constraints = "2.8.0"
  hashes = [
    "h1:abRryu69lsIGXctqjMVoaKqi74eE12Vzd2FLpds1/PI=",
    "zh:1e42d1a04c07d4006844e477ca32b5f45b04f6525dbbbe00b6be6e6ec5a11c54",
    "zh:2f87187cb48ccfb18d12e2c4332e7e822923b659e7339b954b7db78aff91529f",
    "zh:391fe49b4d2dc07bc717248a3fc6952189cfc49c596c514ad72a29c9a9f9d575",
    "zh:89272048e1e63f3edc3e83dfddd5a9fd4bd2a4ead104e67de1e14319294dedf1",
    "zh:a5a057c3435a854389ce8a1d98a54aaa7cbab68aca7baa436a605897aa70ff7e",
    "zh:b1098e53e1a8a3afcd325ecd0328662156b3d9c3d80948f19ba3a4eb870cee2b",
    "zh:b676f949e8274a2b6c3fa41f5428ea597125579c7b93bb50bb73a5e295a7a447",
    "zh:cdf7e9460f28c2dbfe49a79a5022bd0d474ff18120d340738aa35456ba77ebca",
    "zh:e24b59b4ed1c593facbf8051ec58550917991e2e017f3085dac5fb902d9908cb",
    "zh:e3b5e1f5543cac9d9031a028f1c1be4858fb80fae69f181f21e9465e366ebfa2",
    "zh:e9fddc0bcdb28503078456f0088851d45451600d229975fd9990ee92c7489a10",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/hashicorp/kubernetes" {
  version     = "2.17.0"
  constraints = "2.17.0"
  hashes = [
    "h1:I1L2R+OPgGSh+P6uBSycvvoyRIey/FqMwSvlJ9ccw0o=",
    "zh:1cbafea8c404195d8ad2490d75dbeebef131563d3e38dec87231ceb3923a3012",
    "zh:26d9584423ee77e607999b082de7d9dc3e937934aa83341e0832e7253caf4f51",
    "zh:333527fc15fb43bbf1898a2f058598c596468a01d88c415627bb617878dc4d4d",
    "zh:391b8c80e3115af485977d6e949d7260b7fc0b641089b884256bfd36a7077db2",
    "zh:4d18ba55247486181759d60195777945bcd68e17ccd980820ca18e8a8b94aeb5",
    "zh:607ae94d85d1c1ed3845bd71095daadea4b2468e16f57fa05c98eab0de6b14ae",
    "zh:95c6cf22f8ef14e7a4f85e33cff5d6f11056c7880041b71d425d1b5ebbe246e7",
    "zh:b077edcedb46a313b461ac1e49317872063b3871f2acbe1a50498612cefff387",
    "zh:c6a7891683e44148b0c928fd4748b7abac727266ab551d679015f5fe8b72d1e6",
    "zh:e5cebfdf873770c37a4304362003d3fea8d6c2fd819663ad121bc65bb81e4738",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
    "zh:feb19269e7c0de473ad412b37818b48da0cc91e5c93dd4c77a72676ca97a16b1",
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
