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
  version     = "2.2.3"
  constraints = ">= 2.2.2"
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
  constraints = ">= 2.15.0, >= 3.33.0, >= 3.43.0, >= 3.45.0, >= 3.53.0, >= 3.83.0, >= 4.27.0, 4.62.1, < 5.0.0"
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
  version     = "4.65.2"
  constraints = ">= 3.43.0, >= 3.45.0, >= 4.51.0, 4.65.2, < 5.0.0"
  hashes = [
    "h1:pVXfIrfHEbOleSZ1erXgP/KYsFrs6Ne1BeXlufWgR3w=",
    "zh:1d30ff78fa6cb487f045e6fad16366ac979932ca320670aa0be7a8194e093b3e",
    "zh:6b690633fa871fdab94fc938f4667abcd058bcb1c6fdee6d864f058973e2d1ff",
    "zh:9a30136ff9a1717a14967a70740df8f552f24ded1124d3c4fdee55ed30c7ac10",
    "zh:9d89b5b41085170014f411dcd58a73dc4c80395444f53b0cfe79ce6477da588e",
    "zh:a0a3b30a51e2cde2f769a890ceb9959ae881a96f796eeda8f7093e1484a3d687",
    "zh:a1ef9e17a40dac8172aeacfb370c123483e8c0bd19bea86c1db6b4407cf9e17e",
    "zh:a4dc7f033b38528c8ab0092b04e42c3adacd4bd06b39f3aacc6764e3e658c5e1",
    "zh:a70e2fdd3c479db7b5880e9b63a6f82a5f7bf6cc5d0d55bd2372eb2d8c0e6dc4",
    "zh:c18aafb57b9db7c292ca3b1eba52fcc6103b793031aa6c3e5d481eb5352b2777",
    "zh:c240c1e334f55df45d9d8bb8562e45bb8404ef1d43b143d5b9d784d21110b472",
    "zh:eec4b65470d9c749760eb1f4670ba59b185f70ccdce0f0d77e8c1e514e5323ac",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/hashicorp/kubernetes" {
  version     = "2.18.1"
  constraints = "~> 2.10"
  hashes = [
    "h1:h4ezMuMNyKRMRhlrErph7QOUToc77U+rVKdR48w6tr8=",
    "zh:09d69d244f5e688d9b1582112aa5d151c5336278e43d39c88ae920c26536b753",
    "zh:0df4c988056f7d84d9161c6c955ad7346364c261d100ef510a6cc7fa4a235197",
    "zh:2d3d0cb2931b6153a7971ce8c6fae92722b1116e16f42abbaef115dba895c8d8",
    "zh:47830e8fc1760860bfa4aaf418627ff3c6ffcac6cebbbc490e5e0e6b31287d80",
    "zh:49467177b514bada0fb3b6982897a347498af8ef9ef8d9fd611fe21dfded2e25",
    "zh:5c7eae2c51ba175822730a63ad59cf41604c76c46c5c97332506ab42023525ce",
    "zh:6efae755f02df8ab65ce7a831f33bd4817359db205652fd4bc4b969302072b15",
    "zh:7e6e97b79fecd25aaf0f4fb91da945a65c36fe2ba2a4313288a60ede55506aad",
    "zh:b75f2c9dd24b355ffe73e7b2fcd3145fc32735068f0ec2eba2df63f792dd16e8",
    "zh:dbef9698d842eb49a846db6d7694f159ae5154ffbb7a753a9d4cab88c462a6d4",
    "zh:f1b1fd580d92eedd9c8224d463997ccff1a62851fea65106aac299efe9ab622a",
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
  version     = "3.4.3"
  constraints = "~> 3.0"
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
