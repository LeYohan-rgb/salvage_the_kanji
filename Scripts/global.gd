extends Node

#0 normal, 1 easy, 2 hard
var game_mode : int = 0

var kanji : Dictionary = {
	1: {
		"name": "one",
		"structure": 12,
		1: ["one"],
		"grade": 1
	},
	2: {
		"name": "right (direction)",
		"structure": 4,
		1: ["slash", "one"],
		2: ["mouth"],
		"grade": 1
	},
	3: {
		"name": "rain",
		"structure": 12,
		1: ["one"],
		"grade": 1
		
	},
	4: {
		"name": "round, yen",
		"structure": 7,
		1: ["wide"],
		2: ["lid"],
		"grade": 1
	},
	5: {
		"name": "king",
		"structure": 12,
		1: ["king"],
		"grade": 1
	},
	6: {
		"name": "sound",
		"structure": 12,
		1: ["sound"],
		"grade": 1
	},
	7: {
		"name": "below",
		"structure": 2,
		1: ["one"],
		2: ["divination"],
		"grade": 1
	},
	8: {
		"name": "fire",
		"structure": 12,
		1: ["fire"],
		"grade": 1
	},
	9: {
		"name": "flower",
		"structure": 2,
		1: ["grass"],
		2: ["man", "spoon"],
		"grade": 1
	},
	10: {
		"name": "shellfish",
		"structure": 12,
		1: ["shellfish"],
		"grade": 1
	},
	11: {
		"name": "study",
		"structure": 3,
		1: ["small"],
		2: ["cover"],
		3: ["child"],
		"grade": 1
	},
	12: {
		"name": "feeling",
		"structure": 10,
		1: ["breath"],
		2: ["slash", "dot"],
		"grade": 1
	},
	13: {
		"name": "nine",
		"structure": 12,
		1: ["slash", "second"],
		"grade": 1
	},
	14: {
		"name": "rest",
		"structure": 1,
		1: ["man"],
		2: ["tree"],
		"grade": 1
	},
	15: {
		"name": "ball",
		"structure": 12,
		1: ["king", "dot"],
		"grade": 1
	},
	16: {
		"name": "gold",
		"structure": 12,
		1: ["gold"],
		"grade": 1
	},
	17: {
		"name": "sky",
		"structure": 2,
		1: ["cave"],
		2: ["work"],
		"grade": 1
	},
	18: {
		"name": "month, moon",
		"structure": 12,
		1: ["moon"],
		"grade": 1
	},
	19: {
		"name": "dog",
		"structure": 12,
		1: ["dog"],
		"grade": 1
	},
	20: {
		"name": "see",
		"structure": 12,
		1: ["see"],
		"grade": 1
	},
	21: {
		"name": "five",
		"structure": 12,
		1: ["two", "slash", "dot"],
		"grade": 1
	},
	22: {
		"name": "mouth",
		"structure": 12,
		1: ["mouth"],
		"grade": 1
	},
	23: {
		"name": "school",
		"structure": 1,
		1: ["tree"],
		2: ["lid", "father"],
		"grade": 1
	},
	24: {
		"name": "left (direction)",
		"structure": 4,
		1: ["one", "slash"],
		2: ["work"],
		"grade": 1
	},
	25: {
		"name": "three",
		"structure": 2,
		1: ["one"],
		2: ["two"],
		"grade": 1
	},
	26: {
		"name": "mountain",
		"structure": 12,
		1: ["mountain"],
		"grade": 1
	},
	27: {
		"name": "child",
		"structure": 12,
		1: ["child"],
		"grade": 1
	},
	28: {
		"name": "four",
		"structure": 6,
		1: ["enclosure"],
		2: ["legs"],
		"grade": 1
	},
	29: {
		"name": "thread",
		"structure": 12,
		1: ["thread"],
		"grade": 1
	},
	30: {
		"name": "letter",
		"structure": 2,
		1: ["roof"],
		2: ["child"],
		"grade": 1
	},
	31: {
		"name": "ear",
		"structure": 12,
		1: ["ear"],
		"grade": 1
	},
	32: {
		"name": "seven",
		"structure": 12,
		1: ["one", "second"],
		"grade": 1
	},
	33: {
		"name": "car",
		"structure": 12,
		1: ["car"],
		"grade": 1
	},
	34: {
		"name": "hand",
		"structure": 12,
		1: ["hand"],
		"grade": 1
	},
	35: {
		"name": "ten",
		"structure": 12,
		1: ["ten"],
		"grade": 1
	},
	36: {
		"name": "exit",
		"structure": 2,
		1: ["mountain"],
		2: ["container"],
		"grade": 1
	},
	37: {
		"name": "woman",
		"structure": 12,
		1: ["woman"],
		"grade": 1
	},
	38: {
		"name": "small",
		"structure": 12,
		1: ["small"],
		"grade": 1
	},
	39: {
		"name": "up",
		"structure": 2,
		1: ["divination"],
		2: ["one"],
		"grade": 1
	},
	40: {
		"name": "forest",
		"structure": 2,
		1: ["tree"],
		2: ["tree", "tree"],
		"grade": 1
	},
	41: {
		"name": "person",
		"structure": 12,
		1: ["man"],
		"grade": 1
	},
	42: {
		"name": "water",
		"structure": 12,
		1: ["water"],
		"grade": 1
	},
	43: {
		"name": "correct",
		"structure": 2,
		1: ["one"],
		2: ["stop"],
		"grade": 1
	},
	44: {
		"name": "life",
		"structure": 12,
		1: ["life"],
		"grade": 1
	},
	45: {
		"name": "blue",
		"structure": 12,
		1: ["blue"],
		"grade": 1
	},
	46: {
		"name": "evening",
		"structure": 12,
		1: ["evening"],
		"grade": 1
	},
	47: {
		"name": "stone",
		"structure": 12,
		1: ["stone"],
		"grade": 1
	},
	48: {
		"name": "red",
		"structure": 12,
		1: ["red"],
		"grade": 1
	},
	49: {
		"name": "thousand",
		"structure": 2,
		1: ["slash"],
		2: ["ten"],
		"grade": 1
	},
	50: {
		"name": "river",
		"structure": 12,
		1: ["river"],
		"grade": 1
	},
	51: {
		"name": "previous",
		"structure": 2,
		1: ["slash", "earth"],
		2: ["legs"],
		"grade": 1
	},
	52: {
		"name": "early",
		"structure": 2,
		1: ["sun"],
		2: ["ten"],
		"grade": 1
	},
	53: {
		"name": "grass",
		"structure": 3,
		1: ["grass"],
		2: ["sun"],
		3: ["ten"],
		"grade": 1
	},
	54: {
		"name": "foot",
		"structure": 12,
		1: ["foot"],
		"grade": 1
	},
	55: {
		"name": "village",
		"structure": 1,
		1: ["tree"],
		2: ["thumb"],
		"grade": 1
	},
	56: {
		"name": "large",
		"structure": 12,
		1: ["big"],
		"grade": 1
	},
	57: {
		"name": "male",
		"structure": 2,
		1: ["field"],
		2: ["power"],
		"grade": 1
	},
	58: {
		"name": "bamboo",
		"structure": 12,
		1: ["bamboo"],
		"grade": 1
	},
	59: {
		"name": "middle",
		"structure": 12,
		1: ["mouth", "line"],
		"grade": 1
	},
	60: {
		"name": "insect",
		"structure": 12,
		1: ["insect"],
		"grade": 1
	},
	61: {
		"name": "town",
		"structure": 1,
		1: ["field"],
		2: ["one", "hook"],
		"grade": 1
	},
	62: {
		"name": "heaven",
		"structure": 2,
		1: ["one"],
		2: ["big"],
		"grade": 1
	},
	63: {
		"name": "rice paddy",
		"structure": 12,
		1: ["field"],
		"grade": 1
	},
	64: {
		"name": "soil",
		"structure": 12,
		1: ["earth"],
		"grade": 1
	},
	65: {
		"name": "two",
		"structure": 12,
		1: ["two"],
		"grade": 1
	},
	66: {
		"name": "day",
		"structure": 12,
		1: ["sun"],
		"grade": 1
	},
	67: {
		"name": "enter",
		"structure": 12,
		1: ["enter"],
		"grade": 1
	},
	68: {
		"name": "year",
		"structure": 12,
		1: ["slash", "pestle", "line", "one"],
		"grade": 1
	},
	69: {
		"name": "white",
		"structure": 12,
		1: ["white"],
		"grade": 1
	},
	70: {
		"name": "eight",
		"structure": 12,
		1: ["eight"],
		"grade": 1
	},
	71: {
		"name": "hundred",
		"structure": 2,
		1: ["one"],
		2: ["white"],
		"grade": 1
	},
	72: {
		"name": "writing",
		"structure": 12,
		1: ["script"],
		"grade": 1
	},
	73: {
		"name": "tree",
		"structure": 12,
		1: ["tree"],
		"grade": 1
	},
	74: {
		"name": "book",
		"structure": 12,
		1: ["tree", "one"],
		"grade": 1
	},
	75: {
		"name": "name",
		"structure": 2,
		1: ["evening"],
		2: ["mouth"],
		"grade": 1
	},
	76: {
		"name": "eye",
		"structure": 12,
		1: ["eye"],
		"grade": 1
	},
	77: {
		"name": "stand up",
		"structure": 12,
		1: ["stand"],
		"grade": 1
	},
	78: {
		"name": "power",
		"structure": 12,
		1: ["power"],
		"grade": 1
	},
	79: {
		"name": "woods",
		"structure": 1,
		1: ["tree"],
		2: ["tree"],
		"grade": 1
	},
	80: {
		"name": "six",
		"structure": 2,
		1: ["lid"],
		2: ["eight"],
		"grade": 1
	},
	81: {
		"name": "pull",
		"structure": 1,
		1: ["bow"],
		2: ["line"],
		"grade": 2
	},
	82: {
		"name": "feather",
		"structure": 12,
		1: ["feather"],
		"grade": 2
	},
	83: {
		"name": "cloud",
		"structure": 3,
		1: ["rain"],
		2: ["two"],
		3: ["private"],
		"grade": 2
	},
	84: {
		"name": "garden",
		"structure": 6,
		1: ["enclosure"],
		2: ["earth", "mouth", "clothes"],
		"grade": 2
	},
	85: {
		"name": "far",
		"structure": 5,
		1: ["earth", "mouth", "clothes"],
		2: ["walk"],
		"grade": 2
	},
	86: {
		"name": "what",
		"structure": 1,
		1: ["man"],
		2: ["one", "mouth", "hook"],
		"grade": 2
	},
	87: {
		"name": "section",
		"structure": 1,
		1: ["grain"],
		2: ["dipper"],
		"grade": 2
	},
	88: {
		"name": "summer",
		"structure": 3,
		1: ["one"],
		2: ["self"],
		3: ["go slowly"],
		"grade": 2
	},
	89: {
		"name": "house",
		"structure": 2,
		1: ["roof"],
		2: ["pig"],
		"grade": 2
	},
	90: {
		"name": "song",
		"structure": 1,
		1: ["one", "mouth", "line", "one", "mouth", "hook"],
		2: ["lack"],
		"grade": 2
	},
	91: {
		"name": "tableau",
		"structure": 8,
		1: ["one", "field"],
		2: ["container"],
		"grade": 2
	},
	92: {
		"name": "times",
		"structure": 6,
		1: ["enclosure"],
		2: ["mouth"],
		"grade": 2
	},
	93: {
		"name": "association",
		"structure": 2,
		1: ["man", "two"],
		3: ["private"],
		"grade": 2
	},
	94: {
		"name": "sea",
		"structure": 1,
		1: ["water"],
		2: ["slash", "one", "mother"],
		"grade": 2
	},
	95: {
		"name": "picture",
		"structure": 1,
		1: ["thread"],
		2: ["man", "one", "private"],
		"grade": 2
	},
	96: {
		"name": "outside",
		"structure": 1,
		1: ["evening"],
		2: ["divination"],
		"grade": 2
	},
	97: {
		"name": "angle",
		"structure": 12,
		1: ["horn"],
		"grade": 2
	},
	98: {
		"name": "pleasure",
		"structure": 2,
		1: ["white", "ice", "ice"],
		2: ["tree"],
		"grade": 2
	},
	99: {
		"name": "active",
		"structure": 1,
		1: ["water"],
		2: ["slash", "ten", "mouth"],
		"grade": 2
	},
	100: {
		"name": "interval",
		"structure": 7,
		1: ["gate"],
		2: ["sun"],
		"grade": 2
	},
	101: {
		"name": "circle",
		"structure": 12,
		1: ["slash", "second", "dot"],
		"grade": 2
	},
	102: {
		"name": "boulder",
		"structure": 2,
		1: ["mountain"],
		2: ["stone"],
		"grade": 2
	},
	103: {
		"name": "face",
		"structure": 1,
		1: ["stand", "slash", "bristle"],
		2: ["leaf"],
		"grade": 2
	},
	104: {
		"name": "steam",
		"structure": 1,
		1: ["water"],
		2: ["breath"],
		"grade": 2
	},
	105: {
		"name": "write down",
		"structure": 1,
		1: ["speech"],
		2: ["oneself"],
		"grade": 2
	},
	106: {
		"name": "return",
		"structure": 1,
		1: ["sword"],
		2: ["pig's head", "cover", "scarf"],
		"grade": 2
	},
	107: {
		"name": "bow",
		"structure": 12,
		1: ["bow"],
		"grade": 2
	},
	108: {
		"name": "cow",
		"structure": 12,
		1: ["cow"],
		"grade": 2
	},
	109: {
		"name": "fish",
		"structure": 12,
		1: ["fish"],
		"grade": 2
	},
	110: {
		"name": "capital",
		"structure": 3,
		1: ["lid"],
		2: ["mouth"],
		3: ["small"],
		"grade": 2
	},
	111: {
		"name": "strong",
		"structure": 1,
		1: ["bow"],
		2: ["private", "bug"],
		"grade": 2
	},
	112: {
		"name": "teach",
		"structure": 1,
		1: ["old", "child"],
		2: ["rap"],
		"grade": 2
	},
	113: {
		"name": "near",
		"structure": 5,
		1: ["axe"],
		2: ["walk"],
		"grade": 2
	},
	114: {
		"name": "older brother",
		"structure": 2,
		1: ["mouth"],
		2: ["legs"],
		"grade": 2
	},
	115: {
		"name": "shape",
		"structure": 1,
		1: ["one", "two hands"],
		2: ["bristle"],
		"grade": 2
	},
	116: {
		"name": "measure",
		"structure": 1,
		1: ["speech"],
		2: ["ten"],
		"grade": 2
	},
	117: {
		"name": "origin",
		"structure": 2,
		1: ["two"],
		2: ["legs"],
		"grade": 2
	},
	118: {
		"name": "say",
		"structure": 12,
		1: ["speech"],
		"grade": 2
	},
	119: {
		"name": "field",
		"structure": 4,
		1: ["cliff"],
		2: ["white", "small"],
		"grade": 2
	},
	120: {
		"name": "door",
		"structure": 12,
		1: ["door"],
		"grade": 2
	},
	121: {
		"name": "old",
		"structure": 2,
		1: ["ten"],
		2: ["mouth"],
		"grade": 2
	},
	122: {
		"name": "noon",
		"structure": 2,
		1: ["slash", "one"],
		2: ["ten"],
		"grade": 2
	},
	123: {
		"name": "behind",
		"structure": 1,
		1: ["step"],
		2: ["short", "go"],
		"grade": 2
	},
	124: {
		"name": "language",
		"structure": 1,
		1: ["speech"],
		2: ["two", "slash", "dot", "mouth"],
		"grade": 2
	},
	125: {
		"name": "craft",
		"structure": 12,
		1: ["work"],
		"grade": 2
	},
	126: {
		"name": "public",
		"structure": 2,
		1: ["eight"],
		2: ["private"],
		"grade": 2
	},
	127: {
		"name": "wide",
		"structure": 4,
		1: ["dotted cliff"],
		2: ["private"],
		"grade": 2
	},
	128: {
		"name": "mix",
		"structure": 2,
		1: ["lid"],
		2: ["father"],
		"grade": 2
	},
	129: {
		"name": "ray",
		"structure": 3,
		1: ["small"],
		2: ["one"],
		3: ["legs"],
		"grade": 2
	},
	130: {
		"name": "think",
		"structure": 2,
		1: ["old"],
		2: ["one", "wrap"],
		"grade": 2
	},
	131: {
		"name": "go",
		"structure": 12,
		1: ["do"],
		"grade": 2
	},
	132: {
		"name": "tall, expensive",
		"structure": 12,
		1: ["tall"],
		"grade": 2
	},
	133: {
		"name": "yellow",
		"structure": 12,
		1: ["yellow"],
		"grade": 2
	},
	134: {
		"name": "fit",
		"structure": 2,
		1: ["man", "one"],
		3: ["mouth"],
		"grade": 2
	},
	135: {
		"name": "valley",
		"structure": 12,
		1: ["valley"],
		"grade": 2
	},
	136: {
		"name": "country",
		"structure": 6,
		1: ["enclosure"],
		2: ["king", "dot"],
		"grade": 2
	},
	137: {
		"name": "black",
		"structure": 12,
		1: ["black"],
		"grade": 2
	},
	138: {
		"name": "now",
		"structure": 2,
		1: ["man", "one"],
		3: ["second"],
		"grade": 2
	},
	139: {
		"name": "genius",
		"structure": 12,
		1: ["one", "hook", "slash"],
		"grade": 2
	},
	140: {
		"name": "thin",
		"structure": 1,
		1: ["thread"],
		2: ["field"],
		"grade": 2
	},
	141: {
		"name": "make",
		"structure": 1,
		1: ["man"],
		2: ["slash", "one", "line", "one", "one"],
		"grade": 2
	},
	142: {
		"name": "calculate",
		"structure": 3,
		1: ["bamboo"],
		2: ["eye"],
		3: ["one", "slash", "line"],
		"grade": 2
	},
	143: {
		"name": "stop",
		"structure": 12,
		1: ["stop"],
		"grade": 2
	},
	144: {
		"name": "market",
		"structure": 2,
		1: ["lid"],
		2: ["scarf"],
		"grade": 2
	},
	145: {
		"name": "arrow",
		"structure": 12,
		1: ["arrow"],
		"grade": 2
	},
	146: {
		"name": "older sister",
		"structure": 1,
		1: ["woman"],
		2: ["lid", "scarf"],
		"grade": 2
	},
	147: {
		"name": "think",
		"structure": 2,
		1: ["field"],
		2: ["heart"],
		"grade": 2
	},
	148: {
		"name": "paper",
		"structure": 1,
		1: ["thread"],
		2: ["clan"],
		"grade": 2
	},
	149: {
		"name": "Buddhist temple",
		"structure": 2,
		1: ["earth"],
		2: ["thumb"],
		"grade": 2
	},
	150: {
		"name": "oneself",
		"structure": 12,
		1: ["self"],
		"grade": 2
	},
	151: {
		"name": "time",
		"structure": 1,
		1: ["sun"],
		2: ["earth", "thumb"],
		"grade": 2
	},
	152: {
		"name": "room",
		"structure": 3,
		1: ["roof"],
		2: ["one", "private"],
		3: ["earth"],
		"grade": 2
	},
	153: {
		"name": "company",
		"structure": 1,
		1: ["sign"],
		2: ["earth"],
		"grade": 2
	},
	154: {
		"name": "weak",
		"structure": 1,
		1: ["bow", "ice"],
		2: ["bow", "ice"],
		"grade": 2
	},
	155: {
		"name": "neck",
		"structure": 12,
		1: ["head"],
		"grade": 2
	},
	156: {
		"name": "autumn",
		"structure": 1,
		1: ["grain"],
		2: ["fire"],
		"grade": 2
	},
	157: {
		"name": "week",
		"structure": 5,
		1: ["wide", "earth", "mouth"],
		2: ["walk"],
		"grade": 2
	},
	158: {
		"name": "springtime",
		"structure": 2,
		1: ["two", "big"],
		2: ["sun"],
		"grade": 2
	},
	159: {
		"name": "write",
		"structure": 2,
		1: ["brush"],
		2: ["sun"],
		"grade": 2
	},
	160: {
		"name": "few",
		"structure": 12,
		1: ["small", "slash"],
		"grade": 2
	},
	161: {
		"name": "place",
		"structure": 1,
		1: ["earth"],
		2: ["sun", "one", "wrap", "slash", "slash"],
		"grade": 2
	},
	162: {
		"name": "color",
		"structure": 12,
		1: ["color"],
		"grade": 2
	},
	163: {
		"name": "eat, meal",
		"structure": 12,
		1: ["eat"],
		"grade": 2
	},
	164: {
		"name": "heart",
		"structure": 12,
		1: ["heart"],
		"grade": 2
	},
	165: {
		"name": "new",
		"structure": 1,
		1: ["stand", "tree"],
		2: ["axe"],
		"grade": 2
	},
	166: {
		"name": "parent",
		"structure": 1,
		1: ["stand", "tree"],
		2: ["see"],
		"grade": 2
	},
	167: {
		"name": "diagram",
		"structure": 6,
		1: ["enclosure"],
		2: ["dipper"],
		"grade": 2
	},
	168: {
		"name": "number",
		"structure": 1,
		1: ["rice", "woman"],
		2: ["rap"],
		"grade": 2
	},
	169: {
		"name": "west",
		"structure": 12,
		1: ["west"],
		"grade": 2
	},
	170: {
		"name": "voice",
		"structure": 2,
		1: ["scholar"],
		2: ["coprse", "lid"],
		"grade": 2
	},
	171: {
		"name": "star",
		"structure": 2,
		1: ["sun"],
		2: ["life"],
		"grade": 2
	},
	172: {
		"name": "clear up",
		"structure": 1,
		1: ["sun"],
		2: ["blue"],
		"grade": 2
	},
	173: {
		"name": "cut",
		"structure": 1,
		1: ["one", "second"],
		2: ["sword"],
		"grade": 2
	},
	174: {
		"name": "snow",
		"structure": 2,
		1: ["rain"],
		2: ["pig's head"],
		"grade": 2
	},
	175: {
		"name": "boat",
		"structure": 1,
		1: ["boat"],
		2: ["eight", "mouth"],
		"grade": 2
	},
	176: {
		"name": "line",
		"structure": 1,
		1: ["thread"],
		2: ["white", "water"],
		"grade": 2
	},
	177: {
		"name": "in front",
		"structure": 2,
		1: ["dot", "slash", "one"],
		2: ["moon", "sword"],
		"grade": 2
	},
	178: {
		"name": "association",
		"structure": 1,
		1: ["thread"],
		2: ["eye"],
		"grade": 2
	},
	179: {
		"name": "run",
		"structure": 12,
		1: ["run"],
		"grade": 2
	},
	180: {
		"name": "many",
		"structure": 2,
		1: ["evening"],
		2: ["evening"],
		"grade": 2
	},
	181: {
		"name": "thick",
		"structure": 12,
		1: ["big", "dot"],
		"grade": 2
	},
	182: {
		"name": "body",
		"structure": 1,
		1: ["man"],
		2: ["tree", "one"],
		"grade": 2
	},
	183: {
		"name": "pedestal",
		"structure": 2,
		1: ["private"],
		2: ["mouth"],
		"grade": 2
	},
	184: {
		"name": "ground",
		"structure": 1,
		1: ["earth"],
		2: ["second", "line", "second"],
		"grade": 2
	},
	185: {
		"name": "pond",
		"structure": 1,
		1: ["water"],
		2: ["second", "line", "second"],
		"grade": 2
	},
	186: {
		"name": "know",
		"structure": 1,
		1: ["arrow"],
		2: ["mouth"],
		"grade": 2
	},
	187: {
		"name": "tea",
		"structure": 3,
		1: ["grass"],
		2: ["man"],
		3: ["ten", "slash", "dot"],
		"grade": 2
	},
	188: {
		"name": "daytime",
		"structure": 4,
		1: ["corpse"],
		2: ["dot", "sun", "one"],
		"grade": 2
	},
	189: {
		"name": "long",
		"structure": 12,
		1: ["long"],
		"grade": 2
	},
	190: {
		"name": "bird",
		"structure": 12,
		1: ["bird"],
		"grade": 2
	},
	191: {
		"name": "morning",
		"structure": 1,
		1: ["ten", "sun", "ten"],
		2: ["moon"],
		"grade": 2
	},
	192: {
		"name": "straight",
		"structure": 5,
		1: ["ten", "eye"],
		2: ["second"],
		"grade": 2
	},
	193: {
		"name": "pass through",
		"structure": 5,
		1: ["second", "dot", "use"],
		2: ["walk"],
		"grade": 2
	},
	194: {
		"name": "younger brother",
		"structure": 2,
		1: ["dot", "slash"],
		2: ["bow", "line", "slash"],
		"grade": 2
	},
	195: {
		"name": "shop",
		"structure": 4,
		1: ["dotted cliff"],
		2: ["divination", "mouth"],
		"grade": 2
	},
	196: {
		"name": "point",
		"structure": 3,
		1: ["divination"],
		2: ["mouth"],
		3: ["fire"],
		"grade": 2
	},
	197: {
		"name": "electricity",
		"structure": 2,
		1: ["rain"],
		2: ["field", "second"],
		"grade": 2
	},
	198: {
		"name": "sword",
		"structure": 12,
		1: ["sword"],
		"grade": 2
	},
	199: {
		"name": "winter",
		"structure": 2,
		1: ["go"],
		2: ["dot", "dot"],
		"grade": 2
	},
	200: {
		"name": "hit",
		"structure": 2,
		1: ["small"],
		2: ["pig's head"],
		"grade": 2
	},
	201: {
		"name": "east",
		"structure": 12,
		1: ["ten", "field", "man"],
		"grade": 2
	},
	202: {
		"name": "answer",
		"structure": 3,
		1: ["bamboo"],
		2: ["man", "one"],
		3: ["mouth"],
		"grade": 2
	},
	203: {
		"name": "head",
		"structure": 1,
		1: ["bean"],
		2: ["leaf"],
		"grade": 2
	},
	204: {
		"name": "same",
		"structure": 7,
		1: ["wide"],
		2: ["one", "mouth"],
		"grade": 2
	},
	205: {
		"name": "road",
		"structure": 5,
		1: ["head"],
		2: ["walk"],
		"grade": 2
	},
	206: {
		"name": "read",
		"structure": 1,
		1: ["speech"],
		2: ["scholar", "cover", "legs"],
		"grade": 2
	},
	207: {
		"name": "inside",
		"structure": 12,
		1: ["wide", "man"],
		"grade": 2
	},
	208: {
		"name": "south",
		"structure": 7,
		1: ["ten", "wide"],
		2: ["dot", "slash", "pestle"],
		"grade": 2
	},
	209: {
		"name": "meat",
		"structure": 12,
		1: ["meat"],
		"grade": 2
	},
	210: {
		"name": "horse",
		"structure": 12,
		1: ["horse"],
		"grade": 2
	},
	211: {
		"name": "sell",
		"structure": 3,
		1: ["scholar"],
		2: ["cover"],
		3: ["legs"],
		"grade": 2
	},
	212: {
		"name": "buy",
		"structure": 2,
		1: ["cover", "line", "line", "one"],
		2: ["shellfish"],
		"grade": 2
	},
	213: {
		"name": "wheat",
		"structure": 12,
		1: ["wheat"],
		"grade": 2
	},
	214: {
		"name": "half",
		"structure": 12,
		1: ["small", "two"],
		"grade": 2
	},
	215: {
		"name": "one's turn",
		"structure": 2,
		1: ["distinguish"],
		2: ["field"],
		"grade": 2
	},
	216: {
		"name": "father",
		"structure": 12,
		1: ["father"],
		"grade": 2
	},
	217: {
		"name": "wind",
		"structure": 12,
		1: ["wind"],
		"grade": 2
	},
	218: {
		"name": "part, minute of time",
		"structure": 2,
		1: ["eight"],
		2: ["sword"],
		"grade": 2
	},
	219: {
		"name": "hear",
		"structure": 7,
		1: ["gate"],
		2: ["ear"],
		"grade": 2
	},
	220: {
		"name": "rice",
		"structure": 12,
		1: ["rice"],
		"grade": 2
	},
	221: {
		"name": "walk",
		"structure": 2,
		1: ["stop"],
		2: ["small", "slash"],
		"grade": 2
	},
	222: {
		"name": "mother",
		"structure": 12,
		1: ["mother"],
		"grade": 2
	},
	223: {
		"name": "direction",
		"structure": 12,
		1: ["square"],
		"grade": 2
	},
	224: {
		"name": "north",
		"structure": 1,
		1: ["split wood"],
		2: ["spoon"],
		"grade": 2
	},
	225: {
		"name": "every",
		"structure": 2,
		1: ["slash", "one"],
		2: ["mother"],
		"grade": 2
	},
	226: {
		"name": "younger sister",
		"structure": 2,
		1: ["woman"],
		2: ["two", "line", "man"],
		"grade": 2
	},
	227: {
		"name": "ten thousand",
		"structure": 2,
		1: ["one"],
		2: ["wrap"],
		"grade": 2
	},
	228: {
		"name": "bright",
		"structure": 1,
		1: ["sun"],
		2: ["moon"],
		"grade": 2
	},
	229: {
		"name": "chirp",
		"structure": 1,
		1: ["mouth"],
		2: ["bird"],
		"grade": 2
	},
	230: {
		"name": "hair",
		"structure": 12,
		1: ["fur"],
		"grade": 2
	},
	231: {
		"name": "gates",
		"structure": 12,
		1: ["gate"],
		"grade": 2
	},
	232: {
		"name": "night",
		"structure": 2,
		1: ["lid"],
		2: ["man", "go", "dot"],
		"grade": 2
	},
	233: {
		"name": "field",
		"structure": 1,
		1: ["village"],
		2: ["second", "dot", "second", "hook"],
		"grade": 2
	},
	234: {
		"name": "friend",
		"structure": 4,
		1: ["one", "slash"],
		2: ["right hand"],
		"grade": 2
	},
	235: {
		"name": "use",
		"structure": 12,
		1: ["use"],
		"grade": 2
	},
	236: {
		"name": "day of the week",
		"structure": 1,
		1: ["sun"],
		2: ["pig's head", "pig's head", "small bird"],
		"grade": 2
	},
	237: {
		"name": "come",
		"structure": 12,
		1: ["one", "rice"],
		"grade": 2
	},
	238: {
		"name": "village",
		"structure": 12,
		1: ["village"],
		"grade": 2
	},
	239: {
		"name": "reason",
		"structure": 1,
		1: ["king"],
		2: ["village"],
		"grade": 2
	},
	240: {
		"name": "talk",
		"structure": 1,
		1: ["speech"],
		2: ["tongue"],
		"grade": 2
	},
	241: {
		"name": "bad",
		"structure": 2,
		1: ["one", "mouth", "line", "line", "one"],
		2: ["heart"],
		"grade": 3
	},
	242: {
		"name": "cheap",
		"structure": 2,
		1: ["roof"],
		2: ["woman"],
		"grade": 3
	},
	243: {
		"name": "dark",
		"structure": 1,
		1: ["sun"],
		2: ["stand", "sun"],
		"grade": 3
	},
	244: {
		"name": "doctor",
		"structure": 9,
		1: ["box"],
		2: ["arrow"],
		"grade": 3
	},
	245: {
		"name": "committee",
		"structure": 2,
		1: ["grain"],
		2: ["woman"],
		"grade": 3
	},
	246: {
		"name": "idea",
		"structure": 2,
		1: ["sound"],
		2: ["heart"],
		"grade": 3
	},
	247: {
		"name": "nurture",
		"structure": 3,
		1: ["lid"],
		2: ["private"],
		3: ["moon"],
		"grade": 3
	},
	248: {
		"name": "member",
		"structure": 3,
		1: ["mouth"],
		2: ["eye"],
		3: ["eight"],
		"grade": 3
	},
	249: {
		"name": "institution",
		"structure": 1,
		1: ["mound"],
		2: ["roof", "two", "legs"],
		"grade": 3
	},
	250: {
		"name": "drink",
		"structure": 1,
		1: ["eat"],
		2: ["lack"],
		"grade": 3
	},
	251: {
		"name": "carry",
		"structure": 5,
		1: ["car"],
		2: ["walk"],
		"grade": 3
	},
	252: {
		"name": "swim",
		"structure": 1,
		1: ["water"],
		2: ["dot", "water"],
		"grade": 3
	},
	253: {
		"name": "station",
		"structure": 1,
		1: ["horse"],
		2: ["corpse", "dot"],
		"grade": 3
	},
	254: {
		"name": "center",
		"structure": 12,
		1: ["cover", "big"],
		"grade": 3
	},
	255: {
		"name": "side",
		"structure": 1,
		1: ["tree"],
		2: ["yellow"],
		"grade": 3
	},
}
