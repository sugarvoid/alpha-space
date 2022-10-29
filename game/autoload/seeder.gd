extends Node


var seed_name: String
var daily_seed: String


var daily_seeds: Array = [
	{
		"Date": "2022-10-29",
		"Seed": "8202tpoe"
	},
	{
		"Date": "2022-10-30",
		"Seed": "5158qeyd"
	},
	{
		"Date": "2022-10-31",
		"Seed": "5924rwfb"
	},
	{
		"Date": "2022-11-01",
		"Seed": "4571nlee"
	},
	{
		"Date": "2022-11-02",
		"Seed": "1578eguy"
	},
	{
		"Date": "2022-11-03",
		"Seed": "6438zvqe"
	},
	{
		"Date": "2022-11-04",
		"Seed": "8100qusz"
	},
	{
		"Date": "2022-11-05",
		"Seed": "5832vxam"
	},
	{
		"Date": "2022-11-06",
		"Seed": "4116nzry"
	},
	{
		"Date": "2022-11-07",
		"Seed": "2855zevt"
	},
	{
		"Date": "2022-11-08",
		"Seed": "6891kkjn"
	},
	{
		"Date": "2022-11-09",
		"Seed": "3783jyyd"
	},
	{
		"Date": "2022-11-10",
		"Seed": "1133mdjw"
	},
	{
		"Date": "2022-11-11",
		"Seed": "4710pobo"
	},
	{
		"Date": "2022-11-12",
		"Seed": "3742xkvh"
	},
	{
		"Date": "2022-11-13",
		"Seed": "3169ydnu"
	},
	{
		"Date": "2022-11-14",
		"Seed": "9058htco"
	},
	{
		"Date": "2022-11-15",
		"Seed": "9244uxcg"
	},
	{
		"Date": "2022-11-16",
		"Seed": "9632xklw"
	},
	{
		"Date": "2022-11-17",
		"Seed": "8243hukz"
	},
	{
		"Date": "2022-11-18",
		"Seed": "2603nclv"
	},
	{
		"Date": "2022-11-19",
		"Seed": "1887wlmv"
	},
	{
		"Date": "2022-11-20",
		"Seed": "2628qscc"
	},
	{
		"Date": "2022-11-21",
		"Seed": "9722xmmv"
	},
	{
		"Date": "2022-11-22",
		"Seed": "8325xfuv"
	},
	{
		"Date": "2022-11-23",
		"Seed": "2055wjbn"
	},
	{
		"Date": "2022-11-24",
		"Seed": "9070wfgv"
	},
	{
		"Date": "2022-11-25",
		"Seed": "2798zgyu"
	},
	{
		"Date": "2022-11-26",
		"Seed": "8242xcvb"
	},
	{
		"Date": "2022-11-27",
		"Seed": "6252rnso"
	},
	{
		"Date": "2022-11-28",
		"Seed": "5746hmlg"
	},
	{
		"Date": "2022-11-29",
		"Seed": "9250xkxd"
	},
	{
		"Date": "2022-11-30",
		"Seed": "3661gqnr"
	},
	{
		"Date": "2022-12-01",
		"Seed": "9436rwhh"
	},
	{
		"Date": "2022-12-02",
		"Seed": "2653klel"
	},
	{
		"Date": "2022-12-03",
		"Seed": "7506hejs"
	},
	{
		"Date": "2022-12-04",
		"Seed": "9661cvsi"
	},
	{
		"Date": "2022-12-05",
		"Seed": "2888trcu"
	},
	{
		"Date": "2022-12-06",
		"Seed": "6285nbls"
	},
	{
		"Date": "2022-12-07",
		"Seed": "8660ajoq"
	},
	{
		"Date": "2022-12-08",
		"Seed": "5879npqc"
	},
	{
		"Date": "2022-12-09",
		"Seed": "3190kaxw"
	},
	{
		"Date": "2022-12-10",
		"Seed": "2218gojs"
	},
	{
		"Date": "2022-12-11",
		"Seed": "5629zrwz"
	},
	{
		"Date": "2022-12-12",
		"Seed": "3205czti"
	},
	{
		"Date": "2022-12-13",
		"Seed": "5382gnhk"
	},
	{
		"Date": "2022-12-14",
		"Seed": "3518knay"
	},
	{
		"Date": "2022-12-15",
		"Seed": "3403yfdg"
	},
	{
		"Date": "2022-12-16",
		"Seed": "4854usoz"
	},
	{
		"Date": "2022-12-17",
		"Seed": "5673ehjq"
	},
	{
		"Date": "2022-12-18",
		"Seed": "8317udjb"
	},
	{
		"Date": "2022-12-19",
		"Seed": "3434kwbc"
	},
	{
		"Date": "2022-12-20",
		"Seed": "6704jcae"
	},
	{
		"Date": "2022-12-21",
		"Seed": "4528oobt"
	},
	{
		"Date": "2022-12-22",
		"Seed": "7282spra"
	},
	{
		"Date": "2022-12-23",
		"Seed": "5289xzdg"
	},
	{
		"Date": "2022-12-24",
		"Seed": "3445bukk"
	},
	{
		"Date": "2022-12-25",
		"Seed": "2710daiw"
	},
	{
		"Date": "2022-12-26",
		"Seed": "1771uhbd"
	},
	{
		"Date": "2022-12-27",
		"Seed": "3312mahl"
	},
	{
		"Date": "2022-12-28",
		"Seed": "1893sepe"
	},
	{
		"Date": "2022-12-29",
		"Seed": "6476ikhk"
	},
	{
		"Date": "2022-12-30",
		"Seed": "9117wozw"
	},
	{
		"Date": "2022-12-31",
		"Seed": "5467eqfd"
	},
	{
		"Date": "2023-01-01",
		"Seed": "8928kubg"
	},
	{
		"Date": "2023-01-02",
		"Seed": "8651ujbh"
	},
	{
		"Date": "2023-01-03",
		"Seed": "4667rcfo"
	},
	{
		"Date": "2023-01-04",
		"Seed": "3438vywc"
	},
	{
		"Date": "2023-01-05",
		"Seed": "7217hits"
	},
	{
		"Date": "2023-01-06",
		"Seed": "7915xdbs"
	},
	{
		"Date": "2023-01-07",
		"Seed": "1685izgt"
	},
	{
		"Date": "2023-01-08",
		"Seed": "9263hnhk"
	},
	{
		"Date": "2023-01-09",
		"Seed": "8193khmq"
	},
	{
		"Date": "2023-01-10",
		"Seed": "8643ukaa"
	},
	{
		"Date": "2023-01-11",
		"Seed": "9648zecw"
	},
	{
		"Date": "2023-01-12",
		"Seed": "1131enax"
	},
	{
		"Date": "2023-01-13",
		"Seed": "2361agoe"
	},
	{
		"Date": "2023-01-14",
		"Seed": "6463iokp"
	},
	{
		"Date": "2023-01-15",
		"Seed": "2719etxn"
	},
	{
		"Date": "2023-01-16",
		"Seed": "2691pidj"
	},
	{
		"Date": "2023-01-17",
		"Seed": "5688kwjh"
	},
	{
		"Date": "2023-01-18",
		"Seed": "9260wabc"
	},
	{
		"Date": "2023-01-19",
		"Seed": "4614tscm"
	},
	{
		"Date": "2023-01-20",
		"Seed": "7456xbyh"
	},
	{
		"Date": "2023-01-21",
		"Seed": "5052pyky"
	},
	{
		"Date": "2023-01-22",
		"Seed": "2132evbs"
	},
	{
		"Date": "2023-01-23",
		"Seed": "8211aefe"
	},
	{
		"Date": "2023-01-24",
		"Seed": "8031ablr"
	},
	{
		"Date": "2023-01-25",
		"Seed": "2421ybto"
	},
	{
		"Date": "2023-01-26",
		"Seed": "5366izal"
	},
	{
		"Date": "2023-01-27",
		"Seed": "2392rivm"
	},
	{
		"Date": "2023-01-28",
		"Seed": "8936kpal"
	},
	{
		"Date": "2023-01-29",
		"Seed": "8674mdfq"
	},
	{
		"Date": "2023-01-30",
		"Seed": "4042uwka"
	},
	{
		"Date": "2023-01-31",
		"Seed": "7328cfuf"
	},
	{
		"Date": "2023-02-01",
		"Seed": "6375lgkv"
	},
	{
		"Date": "2023-02-02",
		"Seed": "4027jixo"
	},
	{
		"Date": "2023-02-03",
		"Seed": "1759axzy"
	},
	{
		"Date": "2023-02-04",
		"Seed": "6062qljp"
	},
	{
		"Date": "2023-02-05",
		"Seed": "6126qzct"
	},
	{
		"Date": "2023-02-06",
		"Seed": "1512yryd"
	},
	{
		"Date": "2023-02-07",
		"Seed": "3487ldtt"
	},
	{
		"Date": "2023-02-08",
		"Seed": "8753oblq"
	},
	{
		"Date": "2023-02-09",
		"Seed": "6394vqrc"
	},
	{
		"Date": "2023-02-10",
		"Seed": "5195leuj"
	},
	{
		"Date": "2023-02-11",
		"Seed": "6664vprl"
	},
	{
		"Date": "2023-02-12",
		"Seed": "8652pohy"
	},
	{
		"Date": "2023-02-13",
		"Seed": "6487jzgd"
	},
	{
		"Date": "2023-02-14",
		"Seed": "7216frxh"
	},
	{
		"Date": "2023-02-15",
		"Seed": "1417gmbo"
	},
	{
		"Date": "2023-02-16",
		"Seed": "8521hjpb"
	},
	{
		"Date": "2023-02-17",
		"Seed": "5694rnzb"
	},
	{
		"Date": "2023-02-18",
		"Seed": "7896icqt"
	},
	{
		"Date": "2023-02-19",
		"Seed": "6097vbsh"
	},
	{
		"Date": "2023-02-20",
		"Seed": "5364xqrh"
	},
	{
		"Date": "2023-02-21",
		"Seed": "6486piqk"
	},
	{
		"Date": "2023-02-22",
		"Seed": "1407tksh"
	},
	{
		"Date": "2023-02-23",
		"Seed": "6474nxrb"
	},
	{
		"Date": "2023-02-24",
		"Seed": "3877rqsi"
	},
	{
		"Date": "2023-02-25",
		"Seed": "8573ialo"
	},
	{
		"Date": "2023-02-26",
		"Seed": "6433fxsf"
	},
	{
		"Date": "2023-02-27",
		"Seed": "6485mfwa"
	},
	{
		"Date": "2023-02-28",
		"Seed": "8472olub"
	},
	{
		"Date": "2023-03-01",
		"Seed": "3610ekhi"
	},
	{
		"Date": "2023-03-02",
		"Seed": "1723afkr"
	},
	{
		"Date": "2023-03-03",
		"Seed": "2801pdqm"
	},
	{
		"Date": "2023-03-04",
		"Seed": "6236kett"
	},
	{
		"Date": "2023-03-05",
		"Seed": "6821ktvh"
	},
	{
		"Date": "2023-03-06",
		"Seed": "8859bkiv"
	},
	{
		"Date": "2023-03-07",
		"Seed": "7616xmru"
	},
	{
		"Date": "2023-03-08",
		"Seed": "6634jdya"
	},
	{
		"Date": "2023-03-09",
		"Seed": "6658wlpx"
	},
	{
		"Date": "2023-03-10",
		"Seed": "6045talx"
	},
	{
		"Date": "2023-03-11",
		"Seed": "5642leno"
	},
	{
		"Date": "2023-03-12",
		"Seed": "9748yfli"
	},
	{
		"Date": "2023-03-13",
		"Seed": "9004bvcs"
	},
	{
		"Date": "2023-03-14",
		"Seed": "1056ydrk"
	},
	{
		"Date": "2023-03-15",
		"Seed": "1996jous"
	},
	{
		"Date": "2023-03-16",
		"Seed": "7263diul"
	},
	{
		"Date": "2023-03-17",
		"Seed": "1507cpeo"
	},
	{
		"Date": "2023-03-18",
		"Seed": "9787phqz"
	},
	{
		"Date": "2023-03-19",
		"Seed": "1438qaqr"
	},
	{
		"Date": "2023-03-20",
		"Seed": "1879ljza"
	},
	{
		"Date": "2023-03-21",
		"Seed": "2625psyt"
	},
	{
		"Date": "2023-03-22",
		"Seed": "8783frbf"
	},
	{
		"Date": "2023-03-23",
		"Seed": "2858jjoh"
	},
	{
		"Date": "2023-03-24",
		"Seed": "9053ajps"
	},
	{
		"Date": "2023-03-25",
		"Seed": "9186dmca"
	},
	{
		"Date": "2023-03-26",
		"Seed": "5578fjop"
	},
	{
		"Date": "2023-03-27",
		"Seed": "7188qjok"
	},
	{
		"Date": "2023-03-28",
		"Seed": "5984kjpr"
	},
	{
		"Date": "2023-03-29",
		"Seed": "6752nuve"
	},
	{
		"Date": "2023-03-30",
		"Seed": "7427dzxy"
	},
	{
		"Date": "2023-03-31",
		"Seed": "7865zusc"
	},
	{
		"Date": "2023-04-01",
		"Seed": "3550bzxu"
	},
	{
		"Date": "2023-04-02",
		"Seed": "1688cfny"
	},
	{
		"Date": "2023-04-03",
		"Seed": "1942aoyb"
	},
	{
		"Date": "2023-04-04",
		"Seed": "7158bewu"
	},
	{
		"Date": "2023-04-05",
		"Seed": "8575btnt"
	},
	{
		"Date": "2023-04-06",
		"Seed": "5709iwpe"
	},
	{
		"Date": "2023-04-07",
		"Seed": "5584tjrs"
	},
	{
		"Date": "2023-04-08",
		"Seed": "2422eodk"
	},
	{
		"Date": "2023-04-09",
		"Seed": "9096lckn"
	},
	{
		"Date": "2023-04-10",
		"Seed": "5740jzvq"
	},
	{
		"Date": "2023-04-11",
		"Seed": "4218glud"
	},
	{
		"Date": "2023-04-12",
		"Seed": "9593pwnd"
	},
	{
		"Date": "2023-04-13",
		"Seed": "3285przy"
	},
	{
		"Date": "2023-04-14",
		"Seed": "4465ipmy"
	},
	{
		"Date": "2023-04-15",
		"Seed": "5868bxgd"
	},
	{
		"Date": "2023-04-16",
		"Seed": "1876etxt"
	},
	{
		"Date": "2023-04-17",
		"Seed": "3986voru"
	},
	{
		"Date": "2023-04-18",
		"Seed": "7825tfum"
	},
	{
		"Date": "2023-04-19",
		"Seed": "3162wpxj"
	},
	{
		"Date": "2023-04-20",
		"Seed": "6952pnhw"
	},
	{
		"Date": "2023-04-21",
		"Seed": "6925hjxe"
	},
	{
		"Date": "2023-04-22",
		"Seed": "4235offy"
	},
	{
		"Date": "2023-04-23",
		"Seed": "5722huup"
	},
	{
		"Date": "2023-04-24",
		"Seed": "7071gvkq"
	},
	{
		"Date": "2023-04-25",
		"Seed": "2115ccyn"
	},
	{
		"Date": "2023-04-26",
		"Seed": "2002cjdi"
	},
	{
		"Date": "2023-04-27",
		"Seed": "7004tgyy"
	},
	{
		"Date": "2023-04-28",
		"Seed": "2538eagv"
	},
	{
		"Date": "2023-04-29",
		"Seed": "8881sfev"
	},
	{
		"Date": "2023-04-30",
		"Seed": "7920usma"
	},
	{
		"Date": "2023-05-01",
		"Seed": "1543smwu"
	},
	{
		"Date": "2023-05-02",
		"Seed": "4443thoj"
	},
	{
		"Date": "2023-05-03",
		"Seed": "4737ekzz"
	},
	{
		"Date": "2023-05-04",
		"Seed": "4393gpgg"
	},
	{
		"Date": "2023-05-05",
		"Seed": "9224hyrm"
	},
	{
		"Date": "2023-05-06",
		"Seed": "4193eoag"
	},
	{
		"Date": "2023-05-07",
		"Seed": "9759djlk"
	},
	{
		"Date": "2023-05-08",
		"Seed": "3492bock"
	},
	{
		"Date": "2023-05-09",
		"Seed": "6679pcsy"
	},
	{
		"Date": "2023-05-10",
		"Seed": "3788xoxn"
	},
	{
		"Date": "2023-05-11",
		"Seed": "9251krnl"
	},
	{
		"Date": "2023-05-12",
		"Seed": "2533dior"
	},
	{
		"Date": "2023-05-13",
		"Seed": "8334vulr"
	},
	{
		"Date": "2023-05-14",
		"Seed": "6086jmeq"
	},
	{
		"Date": "2023-05-15",
		"Seed": "5718deco"
	},
	{
		"Date": "2023-05-16",
		"Seed": "9366kkbb"
	},
	{
		"Date": "2023-05-17",
		"Seed": "4578epzx"
	},
	{
		"Date": "2023-05-18",
		"Seed": "5331ptuk"
	},
	{
		"Date": "2023-05-19",
		"Seed": "6935omjj"
	},
	{
		"Date": "2023-05-20",
		"Seed": "5573owza"
	},
	{
		"Date": "2023-05-21",
		"Seed": "5811ecfe"
	},
	{
		"Date": "2023-05-22",
		"Seed": "2118ymjw"
	},
	{
		"Date": "2023-05-23",
		"Seed": "8287qovx"
	},
	{
		"Date": "2023-05-24",
		"Seed": "3907fmyw"
	},
	{
		"Date": "2023-05-25",
		"Seed": "7086wkfb"
	},
	{
		"Date": "2023-05-26",
		"Seed": "7326azna"
	},
	{
		"Date": "2023-05-27",
		"Seed": "3832tewb"
	},
	{
		"Date": "2023-05-28",
		"Seed": "6373rbqh"
	},
	{
		"Date": "2023-05-29",
		"Seed": "7346wnow"
	},
	{
		"Date": "2023-05-30",
		"Seed": "2185haxt"
	},
	{
		"Date": "2023-05-31",
		"Seed": "1380guzu"
	},
	{
		"Date": "2023-06-01",
		"Seed": "6523cjwb"
	},
	{
		"Date": "2023-06-02",
		"Seed": "4217yljk"
	},
	{
		"Date": "2023-06-03",
		"Seed": "7404wzmh"
	},
	{
		"Date": "2023-06-04",
		"Seed": "4502pvqz"
	},
	{
		"Date": "2023-06-05",
		"Seed": "2485ylcn"
	},
	{
		"Date": "2023-06-06",
		"Seed": "7550mycm"
	},
	{
		"Date": "2023-06-07",
		"Seed": "8702kmke"
	},
	{
		"Date": "2023-06-08",
		"Seed": "4758wqfb"
	},
	{
		"Date": "2023-06-09",
		"Seed": "6499cfbl"
	},
	{
		"Date": "2023-06-10",
		"Seed": "7936mrhm"
	},
	{
		"Date": "2023-06-11",
		"Seed": "7091yanb"
	},
	{
		"Date": "2023-06-12",
		"Seed": "5826luhm"
	},
	{
		"Date": "2023-06-13",
		"Seed": "3760erzi"
	},
	{
		"Date": "2023-06-14",
		"Seed": "9764nrag"
	},
	{
		"Date": "2023-06-15",
		"Seed": "4993uzyg"
	},
	{
		"Date": "2023-06-16",
		"Seed": "5017hawc"
	},
	{
		"Date": "2023-06-17",
		"Seed": "6006zfgp"
	},
	{
		"Date": "2023-06-18",
		"Seed": "7798uyzm"
	},
	{
		"Date": "2023-06-19",
		"Seed": "1322zahp"
	},
	{
		"Date": "2023-06-20",
		"Seed": "8603wesx"
	},
	{
		"Date": "2023-06-21",
		"Seed": "6518wamm"
	},
	{
		"Date": "2023-06-22",
		"Seed": "8326mzmo"
	},
	{
		"Date": "2023-06-23",
		"Seed": "3775fohc"
	},
	{
		"Date": "2023-06-24",
		"Seed": "5546zwui"
	},
	{
		"Date": "2023-06-25",
		"Seed": "2084ethv"
	},
	{
		"Date": "2023-06-26",
		"Seed": "9126gsde"
	},
	{
		"Date": "2023-06-27",
		"Seed": "1673fkyh"
	},
	{
		"Date": "2023-06-28",
		"Seed": "7180ahdj"
	},
	{
		"Date": "2023-06-29",
		"Seed": "4556lrdx"
	},
	{
		"Date": "2023-06-30",
		"Seed": "6621izfn"
	},
	{
		"Date": "2023-07-01",
		"Seed": "4929oqzj"
	},
	{
		"Date": "2023-07-02",
		"Seed": "7090jxbl"
	},
	{
		"Date": "2023-07-03",
		"Seed": "2595rhok"
	},
	{
		"Date": "2023-07-04",
		"Seed": "9613loja"
	},
	{
		"Date": "2023-07-05",
		"Seed": "4355ettn"
	},
	{
		"Date": "2023-07-06",
		"Seed": "3523buqm"
	},
	{
		"Date": "2023-07-07",
		"Seed": "3954jpdp"
	},
	{
		"Date": "2023-07-08",
		"Seed": "4283ffqy"
	},
	{
		"Date": "2023-07-09",
		"Seed": "9788lroh"
	},
	{
		"Date": "2023-07-10",
		"Seed": "8851xnke"
	},
	{
		"Date": "2023-07-11",
		"Seed": "9488suur"
	},
	{
		"Date": "2023-07-12",
		"Seed": "1435oorf"
	},
	{
		"Date": "2023-07-13",
		"Seed": "4552kzri"
	},
	{
		"Date": "2023-07-14",
		"Seed": "5620lpib"
	},
	{
		"Date": "2023-07-15",
		"Seed": "8692epqk"
	},
	{
		"Date": "2023-07-16",
		"Seed": "6550pvjm"
	},
	{
		"Date": "2023-07-17",
		"Seed": "5791bkrs"
	},
	{
		"Date": "2023-07-18",
		"Seed": "7990ammz"
	},
	{
		"Date": "2023-07-19",
		"Seed": "8914efih"
	},
	{
		"Date": "2023-07-20",
		"Seed": "2465qwnu"
	},
	{
		"Date": "2023-07-21",
		"Seed": "5512fpwf"
	},
	{
		"Date": "2023-07-22",
		"Seed": "6919fiet"
	},
	{
		"Date": "2023-07-23",
		"Seed": "6706aird"
	},
	{
		"Date": "2023-07-24",
		"Seed": "3797gddu"
	},
	{
		"Date": "2023-07-25",
		"Seed": "3382btrh"
	},
	{
		"Date": "2023-07-26",
		"Seed": "4228mgws"
	},
	{
		"Date": "2023-07-27",
		"Seed": "4331vlfj"
	},
	{
		"Date": "2023-07-28",
		"Seed": "7661hvuk"
	},
	{
		"Date": "2023-07-29",
		"Seed": "1911kxod"
	},
	{
		"Date": "2023-07-30",
		"Seed": "5529ahbz"
	},
	{
		"Date": "2023-07-31",
		"Seed": "9300aunf"
	},
	{
		"Date": "2023-08-01",
		"Seed": "2035ydoo"
	},
	{
		"Date": "2023-08-02",
		"Seed": "8967qbzz"
	},
	{
		"Date": "2023-08-03",
		"Seed": "2696ywvi"
	},
	{
		"Date": "2023-08-04",
		"Seed": "9040bbjq"
	},
	{
		"Date": "2023-08-05",
		"Seed": "4076tcur"
	},
	{
		"Date": "2023-08-06",
		"Seed": "3788duyc"
	},
	{
		"Date": "2023-08-07",
		"Seed": "1053zzod"
	},
	{
		"Date": "2023-08-08",
		"Seed": "5019eiva"
	},
	{
		"Date": "2023-08-09",
		"Seed": "1790xihp"
	},
	{
		"Date": "2023-08-10",
		"Seed": "4290hovl"
	},
	{
		"Date": "2023-08-11",
		"Seed": "7547izee"
	},
	{
		"Date": "2023-08-12",
		"Seed": "5595gtfp"
	},
	{
		"Date": "2023-08-13",
		"Seed": "2924vhlk"
	},
	{
		"Date": "2023-08-14",
		"Seed": "1532swte"
	},
	{
		"Date": "2023-08-15",
		"Seed": "7848jfhg"
	},
	{
		"Date": "2023-08-16",
		"Seed": "2058uppn"
	},
	{
		"Date": "2023-08-17",
		"Seed": "7035rggf"
	},
	{
		"Date": "2023-08-18",
		"Seed": "5292qcfd"
	},
	{
		"Date": "2023-08-19",
		"Seed": "1755kncg"
	},
	{
		"Date": "2023-08-20",
		"Seed": "3385fgmb"
	},
	{
		"Date": "2023-08-21",
		"Seed": "9489eovp"
	},
	{
		"Date": "2023-08-22",
		"Seed": "7362esmz"
	},
	{
		"Date": "2023-08-23",
		"Seed": "7754mutk"
	},
	{
		"Date": "2023-08-24",
		"Seed": "9468fdho"
	},
	{
		"Date": "2023-08-25",
		"Seed": "1292fyjq"
	},
	{
		"Date": "2023-08-26",
		"Seed": "5369ifpp"
	},
	{
		"Date": "2023-08-27",
		"Seed": "8754snwj"
	},
	{
		"Date": "2023-08-28",
		"Seed": "8235ljpe"
	},
	{
		"Date": "2023-08-29",
		"Seed": "5329aibs"
	},
	{
		"Date": "2023-08-30",
		"Seed": "9479jyhi"
	},
	{
		"Date": "2023-08-31",
		"Seed": "3881ulcc"
	},
	{
		"Date": "2023-09-01",
		"Seed": "1826eoxj"
	},
	{
		"Date": "2023-09-02",
		"Seed": "8683rpss"
	},
	{
		"Date": "2023-09-03",
		"Seed": "9681apjc"
	},
	{
		"Date": "2023-09-04",
		"Seed": "2882frlp"
	},
	{
		"Date": "2023-09-05",
		"Seed": "5131cotb"
	},
	{
		"Date": "2023-09-06",
		"Seed": "2609fklw"
	},
	{
		"Date": "2023-09-07",
		"Seed": "1096fujh"
	},
	{
		"Date": "2023-09-08",
		"Seed": "2916hfdi"
	},
	{
		"Date": "2023-09-09",
		"Seed": "6744yxfy"
	},
	{
		"Date": "2023-09-10",
		"Seed": "3102vpxv"
	},
	{
		"Date": "2023-09-11",
		"Seed": "2840afio"
	},
	{
		"Date": "2023-09-12",
		"Seed": "7617frmp"
	},
	{
		"Date": "2023-09-13",
		"Seed": "5499ydad"
	},
	{
		"Date": "2023-09-14",
		"Seed": "1450suhr"
	},
	{
		"Date": "2023-09-15",
		"Seed": "9175cnkq"
	},
	{
		"Date": "2023-09-16",
		"Seed": "3416hjjb"
	},
	{
		"Date": "2023-09-17",
		"Seed": "2201uaqq"
	},
	{
		"Date": "2023-09-18",
		"Seed": "7896nops"
	},
	{
		"Date": "2023-09-19",
		"Seed": "3695ojfh"
	},
	{
		"Date": "2023-09-20",
		"Seed": "6387uzbi"
	},
	{
		"Date": "2023-09-21",
		"Seed": "4350wvff"
	},
	{
		"Date": "2023-09-22",
		"Seed": "3276nhbh"
	},
	{
		"Date": "2023-09-23",
		"Seed": "9681zhfe"
	},
	{
		"Date": "2023-09-24",
		"Seed": "5656istl"
	},
	{
		"Date": "2023-09-25",
		"Seed": "8358ahqf"
	},
	{
		"Date": "2023-09-26",
		"Seed": "7357nflh"
	},
	{
		"Date": "2023-09-27",
		"Seed": "8517xjuo"
	},
	{
		"Date": "2023-09-28",
		"Seed": "2869boma"
	},
	{
		"Date": "2023-09-29",
		"Seed": "5830ivjk"
	},
	{
		"Date": "2023-09-30",
		"Seed": "5179nstx"
	},
	{
		"Date": "2023-10-01",
		"Seed": "2179lnon"
	},
	{
		"Date": "2023-10-02",
		"Seed": "8409ioiw"
	},
	{
		"Date": "2023-10-03",
		"Seed": "1002fvzd"
	},
	{
		"Date": "2023-10-04",
		"Seed": "1522nfxs"
	},
	{
		"Date": "2023-10-05",
		"Seed": "6001pweg"
	},
	{
		"Date": "2023-10-06",
		"Seed": "7478uyel"
	},
	{
		"Date": "2023-10-07",
		"Seed": "3115yzwh"
	},
	{
		"Date": "2023-10-08",
		"Seed": "7360kmri"
	},
	{
		"Date": "2023-10-09",
		"Seed": "4768zejo"
	},
	{
		"Date": "2023-10-10",
		"Seed": "8517vnuh"
	},
	{
		"Date": "2023-10-11",
		"Seed": "8889itoz"
	},
	{
		"Date": "2023-10-12",
		"Seed": "7692zadb"
	},
	{
		"Date": "2023-10-13",
		"Seed": "4507qcey"
	},
	{
		"Date": "2023-10-14",
		"Seed": "8330uzpy"
	},
	{
		"Date": "2023-10-15",
		"Seed": "1843abbw"
	},
	{
		"Date": "2023-10-16",
		"Seed": "8674kjhj"
	},
	{
		"Date": "2023-10-17",
		"Seed": "6981jqzi"
	},
	{
		"Date": "2023-10-18",
		"Seed": "7451eddm"
	},
	{
		"Date": "2023-10-19",
		"Seed": "3367azhm"
	}
]

var random_seeds: Array = [
	"1632wdla",
	"2417csxv",
	"4481duep",
	"1479fgsc",
	"4436hmfy",
	"9923cluf",
	"6278data",
	"9709xaer",
	"4437vuac",
	"2715isfv",
	"2020xhbw",
	"6086qiid",
	"8394lnff",
	"2637mkco",
	"4489vcon",
	"3518pwqf",
	"5962wdtu",
	"7793uneo",
	"7862uvmh",
	"8781sfkh",
	"7171ddto",
	"7976qwxj",
	"7010rxob",
	"3421byss",
	"9836ihni",
	"7517xncw",
	"7158abtl",
	"5373cvja",
	"7190sibo",
	"5621gjbt",
	"1272khwv",
	"1565yocw",
	"7465dqyg",
	"5798mvat",
	"8212kmnf",
	"1331relv",
	"6516rtho",
	"9277tmas",
	"8485sehx",
	"4360ttok",
	"4799vrmc",
	"3911cfry",
	"5172vvzt",
	"3251yczn",
	"7681hdbu",
	"4683yefw",
	"1030sclm",
	"5060fyao",
	"9226lzty",
	"9877mfyy",
	"7174lihd",
	"6295kwuu",
	"2047anqo",
	"6711dfjt",
	"5412jtds",
	"9713csgz",
	"7192xwvu",
	"3514lcmt",
	"5692sftd",
	"3771lxpc",
	"5689paxq",
	"5349kqpf",
	"7757twdr",
	"1829vrzk",
	"5583sqtb",
	"7227fxxu",
	"3149cngk",
	"6922mogi",
	"7725opzn",
	"6068bmdy",
	"9613qytz",
	"4124giom",
	"8470vtdz",
	"9644okhp",
	"5273fkuy",
	"7942nbyz",
	"8548bhie",
	"8878yjca",
	"2989hirq",
	"1518gnih",
	"8306cmep",
	"1205roze",
	"3603rznc",
	"3896juno",
	"9990iqgm",
	"4800kica",
	"2677xgxm",
	"8191jven",
	"1860isqq",
	"4035zkqz",
	"4162wdek",
	"1779ocad",
	"5027fqev",
	"4905klmv",
	"1469mcnn",
	"7729btjh",
	"1669gxnt",
	"5768vlte",
	"5512olov",
	"9636uitu",
	"4531cwit",
	"1410nalf",
	"7108pftm",
	"5107gyxx",
	"6489pylw",
	"4291lrer",
	"3745sehy",
	"4437ugbx",
	"2632tskl",
	"1745ewzi",
	"7306mjqu",
	"4230toui",
	"6160otxq",
	"7436hpbl",
	"7503kzom",
	"6004arhw",
	"8945srzn",
	"7338qwdw",
	"8227pygd",
	"6736jstp",
	"1876pwzz",
	"8352hiot",
	"5436fbce",
	"7513qyhf",
	"4968yypu",
	"6480hvio",
	"5762usje",
	"8731eqgb",
	"6149wcvf",
	"6973nfpg",
	"1604xpyq",
	"4755wbws",
	"7296xrel",
	"3714zfma",
	"2831ojcd",
	"8193yvhd",
	"7851mxnh",
	"7863ksbi",
	"9758sxjh",
	"8936zplv",
	"1001guwh",
	"4968zznk",
	"8467agxp",
	"6896cnpm",
	"1132cbhm",
	"7152skvy",
	"5425xmne",
	"8355htxb",
	"8331htwv",
	"3069tnxm",
	"4711bpto",
	"3639mspg",
	"4955wtzs",
	"4564mixd",
	"6406hndm",
	"6289ucmh",
	"6241votl",
	"9960srsa",
	"6530pbzo",
	"7968jjrk",
	"4598ngum",
	"6785zajw",
	"2920phou",
	"7520kurb",
	"1353oxay",
	"2439fuwo",
	"5218khsc",
	"3191ihwb",
	"8566oxdg",
	"4806mzdm",
	"8420ikxt",
	"9981zgvu",
	"1461hmye",
	"8516ntty",
	"1369otpb",
	"9167crjr",
	"5542wlag",
	"9858riml",
	"9945rwyc",
	"8424ioci",
	"5784htox",
	"2841cjnn",
	"8670fgha",
	"2059wtlv",
	"6711hrph",
	"2124wudd",
	"6389eugu",
	"4771cfrf",
	"7683xmzm",
	"7352vqgl",
	"2175pikr",
	"5240jben",
	"5235hjnd",
	"7829guge",
	"3949gpfj",
	"1024iyax",
	"1525diwo",
	"7138jodu",
	"3695ialy",
	"3634jplk"
]


func _ready() -> void:
	self.daily_seed = get_daily_seed()

func _get_today_string() -> String:
	var unix_time = Time.get_unix_time_from_system()
	return(Time.get_date_string_from_unix_time(unix_time))

func set_seed(s: String) -> void:
	seed_name = s
	_make_seed()
	
func _make_seed() -> void:
	var seed_to_use : int
	
	if seed_name:
		seed_to_use = hash(seed_name)
	else:
		seed_to_use = randi()
	
	seed(seed_to_use)
	print(seed_to_use, " is the seed being used")
	

func get_daily_seed() -> String:
	var seed: String
	for s in daily_seeds:
		if(s["Date"] == _get_today_string()):
			seed = s["Seed"]
	return seed 

func get_random_seed() -> String:
	var seed: String
	randomize()
	return self.random_seeds[randi() % random_seeds.size()]


