extends Node


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
		1: ["evening", "mouth"],
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
		1: ["rain", "two", "private"],
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
		"structure": 3,
		1: ["man"],
		2: ["one"],
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
}
