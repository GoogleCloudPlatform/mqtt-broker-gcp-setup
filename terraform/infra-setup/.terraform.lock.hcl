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
  version     = "4.79.0"
  constraints = ">= 3.33.0, >= 3.43.0, >= 3.45.0, >= 3.53.0, >= 3.83.0, >= 4.25.0, >= 4.51.0, 4.79.0, < 5.0.0"
  hashes = [
    "h1:Li/wjCxais5NQTFyxfca1ot58EKadeOgQIRKO1INFwU=",
    "zh:03e18743bc56ca2d482f9bbd9398d3b62874bfd59336b49569a67e288f95d75a",
    "zh:0755d2658f097c6fd3445880510a79240b263762cdcafefbe9dcc6a66919d0a0",
    "zh:2e21fadd825e3da54963731660c1a7243594c80d41670a67ec9755259c9dc154",
    "zh:410b698731f4c90ab41767267de74d10cd82781aafce3926129d77d08b7ee2ae",
    "zh:7f90dbe01ff21fdb802c9d089d35e9c520325f70325917110dd5e04443d2d3d5",
    "zh:9406e4a8488e6b1b7e9e0294ef848705a6125942f544fa57d9fa9d0c02c92564",
    "zh:952436a52730be26b0b4503327b3961ff14e44cbc0037712ffad7c8f5bceff62",
    "zh:a7edfc96ba7d8bb46c985018184d3de40c5e21bf3e7c09288a5c34d778e9f78a",
    "zh:b7604f0706550dd94607011d9a6fee3e64122a48eb7ee43fed6a9b5c82dad61b",
    "zh:ce6b1e85349f4ab9179bfa5bbde72a9a811182941475fb1815b55dae60dcd122",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
    "zh:fa5c1ca75dd458cbd3cd2312420a0dead2a8de9792faa2502e27be91c2faa741",
  ]
}

provider "registry.terraform.io/hashicorp/google-beta" {
  version     = "4.51.0"
  constraints = ">= 3.45.0, >= 4.51.0, 4.51.0, < 5.0.0"
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
