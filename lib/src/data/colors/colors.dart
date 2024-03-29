const commonColors = [
  'Black',
  'Blue',
  'Brown',
  'Gray',
  'Green',
  'Orange',
  'Red',
  'Violet',
  'Indigo',
  'White',
  'Yellow',
  'Silver',
  'Gold',
  'Beige',
  'Purple',
];

const allColors = [
  'Absolute Zero',
  'Acid green',
  'Aero',
  'Aero blue',
  'African violet',
  'Air superiority blue',
  'Alabaster',
  'Alice blue',
  'Alloy orange',
  'Almond',
  'Amaranth',
  'Amaranth pink',
  'Amaranth purple',
  'Amaranth red',
  'Amazon',
  'Amber',
  'Amethyst',
  'Android green',
  'Antique brass',
  'Antique bronze',
  'Antique fuchsia',
  'Antique ruby',
  'Antique white',
  'Apple green',
  'Apricot',
  'Aqua',
  'Aquamarine',
  'Arctic lime',
  'Army green',
  'Artichoke',
  'Arylide yellow',
  'Ash gray',
  'Asparagus',
  'Atomic tangerine',
  'Auburn',
  'Aureolin',
  'Avocado',
  'Azure',
  'Baby blue',
  'Baby blue eyes',
  'Baby pink',
  'Baby powder',
  'Baker-Miller pink',
  'Banana Mania',
  'Barbie Pink',
  'Barn red',
  'Battleship grey',
  'Beau blue',
  'Beaver',
  'Beige',
  'B\'dazzled blue',
  'Big dip o’ruby',
  'Bisque',
  'Bistre',
  'Bistre brown',
  'Bitter lemon',
  'Bitter lime',
  'Bittersweet',
  'Bittersweet shimmer',
  'Black',
  'Black bean',
  'Black chocolate',
  'Black coffee',
  'Black coral',
  'Black olive',
  'Black Shadows',
  'Blanched almond',
  'Blast-off bronze',
  'Bleu de France',
  'Blizzard blue',
  'Blond',
  'Blood red',
  'Blue',
  'Blue bell',
  'Blue-gray',
  'Blue-green',
  'Blue jeans',
  'Blue sapphire',
  'Blue-violet',
  'Blue yonder',
  'Bluetiful',
  'Blush',
  'Bole',
  'Bone',
  'Bottle green',
  'Brandy',
  'Brick red',
  'Bright green',
  'Bright lilac',
  'Bright maroon',
  'Bright navy blue',
  'Brilliant rose',
  'Brink pink',
  'British racing green',
  'Bronze',
  'Brown',
  'Brown sugar',
  'Brunswick green',
  'Bud green',
  'Buff',
  'Burgundy',
  'Burlywood',
  'Burnished brown',
  'Burnt orange',
  'Burnt sienna',
  'Burnt umber',
  'Byzantine',
  'Byzantium',
  'Cadet',
  'Cadet blue',
  'Cadet grey',
  'Cadmium green',
  'Cadmium orange',
  'Cadmium red',
  'Cadmium yellow',
  'Café au lait',
  'Café noir',
  'Cambridge blue',
  'Camel',
  'Cameo pink',
  'Canary',
  'Canary yellow',
  'Candy apple red',
  'Candy pink',
  'Capri',
  'Caput mortuum',
  'Cardinal',
  'Caribbean green',
  'Carmine',
  'Carnation pink',
  'Carnelian',
  'Carolina blue',
  'Carrot orange',
  'Castleton green',
  'Catawba',
  'Cedar Chest',
  'Celadon',
  'Celadon blue',
  'Celadon green',
  'Celeste',
  'Celtic blue',
  'Cerise',
  'Cerulean',
  'Cerulean blue',
  'Cerulean frost',
  'CG blue',
  'CG red',
  'Champagne',
  'Champagne pink',
  'Charcoal',
  'Charleston green',
  'Charm pink',
  'Cherry blossom pink',
  'Chestnut',
  'Chili red',
  'China pink',
  'China rose',
  'Chinese red',
  'Chinese violet',
  'Chinese yellow',
  'Chocolate Cosmos',
  'Chrome yellow',
  'Cinereous',
  'Cinnabar',
  'Cinnamon Satin',
  'Citrine',
  'Citron',
  'Claret',
  'Cobalt blue',
  'Cocoa brown',
  'Coffee',
  'Columbia Blue',
  'Congo pink',
  'Cool grey',
  'Copper',
  'Copper penny',
  'Copper red',
  'Copper rose',
  'Coquelicot',
  'Coral',
  'Coral pink',
  'Cordovan',
  'Corn',
  'Cornell red',
  'Cornflower blue',
  'Cornsilk',
  'Cosmic cobalt',
  'Cosmic latte',
  'Coyote brown',
  'Cotton candy',
  'Cream',
  'Crimson',
  'Crystal',
  'Cultured',
  'Cyan',
  'Cyber grape',
  'Cyber yellow',
  'Cyclamen',
  'Dark blue-gray',
  'Dark brown',
  'Dark byzantium',
  'Dark cornflower blue',
  'Dark cyan',
  'Dark electric blue',
  'Dark goldenrod',
  'Dark green',
  'Dark jungle green',
  'Dark khaki',
  'Dark lava',
  'Dark liver',
  'Dark magenta',
  'Dark moss green',
  'Dark olive green',
  'Dark orange',
  'Dark orchid',
  'Dark pastel green',
  'Dark purple',
  'Dark red',
  'Dark salmon',
  'Dark sea green',
  'Dark sienna',
  'Dark sky blue',
  'Dark slate blue',
  'Dark slate gray',
  'Dark spring green',
  'Dark turquoise',
  'Dark violet',
  'Dartmouth green',
  'Davy\'s grey',
  'Deep cerise',
  'Deep champagne',
  'Deep chestnut',
  'Deep jungle green',
  'Deep pink',
  'Deep saffron',
  'Deep sky blue',
  'Deep Space Sparkle',
  'Deep taupe',
  'Denim',
  'Denim blue',
  'Desert',
  'Desert sand',
  'Dim gray',
  'Dodger blue',
  'Dogwood rose',
  'Drab',
  'Duke blue',
  'Dutch white',
  'Earth yellow',
  'Ebony',
  'Ecru',
  'Eerie black',
  'Eggplant',
  'Eggshell',
  'Egyptian blue',
  'Eigengrau',
  'Electric blue',
  'Electric green',
  'Electric indigo',
  'Electric lime',
  'Electric purple',
  'Electric violet',
  'Emerald',
  'Eminence',
  'English green',
  'English lavender',
  'English red',
  'English vermillion',
  'English violet',
  'Erin',
  'Eton blue',
  'Fallow',
  'Falu red',
  'Fandango',
  'Fandango pink',
  'Fashion fuchsia',
  'Fawn',
  'Feldgrau',
  'Fern green',
  'Field drab',
  'Fiery rose',
  'Firebrick',
  'Fire engine red',
  'Fire opal',
  'Flame',
  'Flax',
  'Flirt',
  'Floral white',
  'Fluorescent blue',
  'French beige',
  'French bistre',
  'French blue',
  'French fuchsia',
  'French lilac',
  'French lime',
  'French mauve',
  'French pink',
  'French raspberry',
  'French rose',
  'French sky blue',
  'French violet',
  'Frostbite',
  'Fuchsia',
  'Fuchsia purple',
  'Fuchsia rose',
  'Fulvous',
  'Fuzzy Wuzzy',
  'Gainsboro',
  'Gamboge',
  'Generic viridian',
  'Ghost white',
  'Glaucous',
  'Glossy grape',
  'GO green',
  'Gold',
  'Gold Fusion',
  'Golden brown',
  'Golden poppy',
  'Golden yellow',
  'Goldenrod',
  'Granite gray',
  'Granny Smith apple',
  'Green',
  'Green-blue',
  'Green-cyan',
  'Green Lizard',
  'Green Sheen',
  'Green-yellow',
  'Grullo',
  'Gunmetal',
  'Han blue',
  'Han purple',
  'Hansa yellow',
  'Harlequin',
  'Harvest gold',
  'Heat Wave',
  'Heliotrope',
  'Heliotrope gray',
  'Hollywood cerise',
  'Honeydew',
  'Honolulu blue',
  'Hooker\'s green',
  'Hot magenta',
  'Hot pink',
  'Hunter green',
  'Iceberg',
  'Icterine',
  'Illuminating emerald',
  'Imperial red',
  'Inchworm',
  'Independence',
  'India green',
  'Indian red',
  'Indian yellow',
  'Indigo',
  'Indigo dye',
  'International Klein Blue',
  'Iris',
  'Irresistible',
  'Isabelline',
  'Italian sky blue',
  'Ivory',
  'Jade',
  'Japanese carmine',
  'Japanese violet',
  'Jasmine',
  'Jazzberry jam',
  'Jet',
  'Jonquil',
  'June bud',
  'Jungle green',
  'Kelly green',
  'Keppel',
  'Key lime',
  'Kobe',
  'Kobi',
  'Kobicha',
  'Kombu green',
  'KSU purple',
  'Languid lavender',
  'Lapis lazuli',
  'Laser lemon',
  'Laurel green',
  'Lava',
  'Lavender blue',
  'Lavender blush',
  'Lavender gray',
  'Lawn green',
  'Lemon',
  'Lemon chiffon',
  'Lemon curry',
  'Lemon glacier',
  'Lemon meringue',
  'Lemon yellow',
  'Liberty',
  'Light blue',
  'Light coral',
  'Light cornflower blue',
  'Light cyan',
  'Light French beige',
  'Light goldenrod yellow',
  'Light gray',
  'Light green',
  'Light orange',
  'Light periwinkle',
  'Light pink',
  'Light salmon',
  'Light sea green',
  'Light sky blue',
  'Light slate gray',
  'Light steel blue',
  'Light yellow',
  'Lilac',
  'Lilac Luster',
  'Lime green',
  'Lincoln green',
  'Linen',
  'Lion',
  'Liseran purple',
  'Little boy blue',
  'Liver',
  'Liver chestnut',
  'Livid',
  'Macaroni and Cheese',
  'Madder Lake',
  'Magenta',
  'Magenta haze',
  'Magic mint',
  'Magnolia',
  'Mahogany',
  'Maize',
  'Majorelle blue',
  'Malachite',
  'Manatee',
  'Mandarin',
  'Mango',
  'Mango Tango',
  'Mantis',
  'Mardi Gras',
  'Marigold',
  'Mauve',
  'Mauve taupe',
  'Mauvelous',
  'Maximum blue',
  'Maximum blue green',
  'Maximum blue purple',
  'Maximum green',
  'Maximum green yellow',
  'Maximum purple',
  'Maximum red',
  'Maximum red purple',
  'Maximum yellow',
  'Maximum yellow red',
  'May green',
  'Maya blue',
  'Medium aquamarine',
  'Medium blue',
  'Medium candy apple red',
  'Medium carmine',
  'Medium champagne',
  'Medium orchid',
  'Medium purple',
  'Medium sea green',
  'Medium slate blue',
  'Medium spring green',
  'Medium turquoise',
  'Medium violet-red',
  'Mellow apricot',
  'Mellow yellow',
  'Melon',
  'Metallic gold',
  'Metallic Seaweed',
  'Metallic Sunburst',
  'Mexican pink',
  'Middle blue',
  'Middle blue green',
  'Middle blue purple',
  'Middle grey',
  'Middle green',
  'Middle green yellow',
  'Middle purple',
  'Middle red',
  'Middle red purple',
  'Middle yellow',
  'Middle yellow red',
  'Midnight',
  'Midnight blue',
  'Mikado yellow',
  'Mimi pink',
  'Mindaro',
  'Ming',
  'Minion yellow',
  'Mint',
  'Mint cream',
  'Mint green',
  'Misty moss',
  'Misty rose',
  'Mode beige',
  'Morning blue',
  'Moss green',
  'Mountain Meadow',
  'Mountbatten pink',
  'MSU green',
  'Mulberry',
  'Mustard',
  'Myrtle green',
  'Mystic',
  'Mystic maroon',
  'Nadeshiko pink',
  'Naples yellow',
  'Navajo white',
  'Navy blue',
  'Neon blue',
  'Neon Carrot',
  'Neon green',
  'Neon fuchsia',
  'New York pink',
  'Nickel',
  'Non-photo blue',
  'Nyanza',
  'Ocean Blue',
  'Ocean green',
  'Ochre',
  'Old burgundy',
  'Old gold',
  'Old lace',
  'Old lavender',
  'Old mauve',
  'Old rose',
  'Old silver',
  'Olive',
  'Olive Drab #7',
  'Olive green',
  'Olivine',
  'Onyx',
  'Opal',
  'Opera mauve',
  'Orange',
  'Orange peel',
  'Orange-red',
  'Orange soda',
  'Orange-yellow',
  'Orchid',
  'Orchid pink',
  'Outrageous Orange',
  'Oxblood',
  'Oxford blue',
  'OU Crimson red',
  'Pacific blue',
  'Pakistan green',
  'Palatinate purple',
  'Pale aqua',
  'Pale cerulean',
  'Pale Dogwood',
  'Pale pink',
  'Pale silver',
  'Pale spring bud',
  'Pansy purple',
  'Paolo Veronese green',
  'Papaya whip',
  'Paradise pink',
  'Parchment',
  'Paris Green',
  'Pastel pink',
  'Patriarch',
  'Payne\'s grey',
  'Peach',
  'Peach puff',
  'Pear',
  'Pearly purple',
  'Periwinkle',
  'Permanent Geranium Lake',
  'Persian blue',
  'Persian green',
  'Persian indigo',
  'Persian orange',
  'Persian pink',
  'Persian plum',
  'Persian red',
  'Persian rose',
  'Persimmon',
  'Pewter Blue',
  'Phlox',
  'Phthalo blue',
  'Phthalo green',
  'Picotee blue',
  'Pictorial carmine',
  'Piggy pink',
  'Pine green',
  'Pine tree',
  'Pink',
  'Pink flamingo',
  'Pink lace',
  'Pink lavender',
  'Pink Sherbet',
  'Pistachio',
  'Platinum',
  'Plum',
  'Plump Purple',
  'Polished Pine',
  'Pomp and Power',
  'Popstar',
  'Portland Orange',
  'Powder blue',
  'Princeton orange',
  'Process yellow',
  'Prune',
  'Prussian blue',
  'Psychedelic purple',
  'Puce',
  'Pumpkin',
  'Purple',
  'Purple mountain majesty',
  'Purple navy',
  'Purple pizzazz',
  'Purple Plum',
  'Purpureus',
  'Queen blue',
  'Queen pink',
  'Quick Silver',
  'Quinacridone magenta',
  'Radical Red',
  'Raisin black',
  'Rajah',
  'Raspberry',
  'Raspberry glace',
  'Raspberry rose',
  'Raw sienna',
  'Raw umber',
  'Razzle dazzle rose',
  'Razzmatazz',
  'Razzmic Berry',
  'Rebecca Purple',
  'Red',
  'Red-orange',
  'Red-purple',
  'Red Salsa',
  'Red-violet',
  'Redwood',
  'Resolution blue',
  'Rhythm',
  'Rich black',
  'Rifle green',
  'Robin egg blue',
  'Rocket metallic',
  'Rojo Spanish red',
  'Roman silver',
  'Rose',
  'Rose bonbon',
  'Rose Dust',
  'Rose ebony',
  'Rose madder',
  'Rose pink',
  'Rose Pompadour',
  'Rose quartz',
  'Rose red',
  'Rose taupe',
  'Rose vale',
  'Rosewood',
  'Rosso corsa',
  'Rosy brown',
  'Royal purple',
  'Royal yellow',
  'Ruber',
  'Rubine red',
  'Ruby',
  'Ruby red',
  'Rufous',
  'Russet',
  'Russian green',
  'Russian violet',
  'Rust',
  'Rusty red',
  'Sacramento State green',
  'Saddle brown',
  'Safety orange',
  'Safety yellow',
  'Saffron',
  'Sage',
  'St. Patrick\'s blue',
  'Salmon',
  'Salmon pink',
  'Sand',
  'Sand dune',
  'Sandy brown',
  'Sap green',
  'Sapphire',
  'Sapphire blue',
  'Satin sheen gold',
  'Scarlet',
  'Schauss pink',
  'School bus yellow',
  'Screamin\' Green',
  'Sea green',
  'Seal brown',
  'Seashell',
  'Selective yellow',
  'Sepia',
  'Shadow',
  'Shadow blue',
  'Shamrock green',
  'Sheen green',
  'Shimmering Blush',
  'Shiny Shamrock',
  'Shocking pink',
  'Sienna',
  'Silver',
  'Silver chalice',
  'Silver pink',
  'Silver sand',
  'Sinopia',
  'Sizzling Red',
  'Sizzling Sunrise',
  'Skobeloff',
  'Sky blue',
  'Sky magenta',
  'Slate blue',
  'Slate gray',
  'Slimy green',
  'Smitten',
  'Smoky black',
  'Snow',
  'Solid pink',
  'Sonic silver',
  'Space cadet',
  'Spanish bistre',
  'Spanish blue',
  'Spanish carmine',
  'Spanish gray',
  'Spanish green',
  'Spanish orange',
  'Spanish pink',
  'Spanish red',
  'Spanish sky blue',
  'Spanish violet',
  'Spanish viridian',
  'Spring bud',
  'Spring Frost',
  'Spring green',
  'Star command blue',
  'Steel blue',
  'Steel pink',
  'Steel Teal',
  'Stil de grain yellow',
  'Straw',
  'Strawberry',
  'Strawberry Blonde',
  'Sugar Plum',
  'Sunglow',
  'Sunray',
  'Sunset',
  'Super pink',
  'Sweet Brown',
  'Syracuse Orange',
  'Tan',
  'Tangerine',
  'Tango pink',
  'Tart Orange',
  'Taupe',
  'Taupe gray',
  'Tea green',
  'Tea rose',
  'Tea rose',
  'Teal',
  'Teal blue',
  'Telemagenta',
  'Terra cotta',
  'Thistle',
  'Thulian pink',
  'Tickle Me Pink',
  'Tiffany Blue',
  'Timberwolf',
  'Titanium yellow',
  'Tomato',
  'Tropical rainforest',
  'True Blue',
  'Trypan Blue',
  'Tufts blue',
  'Tumbleweed',
  'Turquoise',
  'Turquoise blue',
  'Turquoise green',
  'Turtle green',
  'Tuscan',
  'Tuscan brown',
  'Tuscan red',
  'Tuscan tan',
  'Tuscany',
  'Twilight lavender',
  'Tyrian purple',
  'UA blue',
  'UA red',
  'Ultramarine',
  'Ultramarine blue',
  'Ultra pink',
  'Ultra red',
  'Umber',
  'Unbleached silk',
  'United Nations blue',
  'University of Pennsylvania red',
  'Unmellow yellow',
  'UP Forest green',
  'UP maroon',
  'Upsdell red',
  'Uranian blue',
  'USAFA blue',
  'Van Dyke brown',
  'Vanilla',
  'Vanilla ice',
  'Vegas gold',
  'Venetian red',
  'Verdigris',
  'Vermilion',
  'Vermilion',
  'Veronica',
  'Violet',
  'Violet-blue',
  'Violet-red',
  'Viridian',
  'Viridian green',
  'Vivid burgundy',
  'Vivid sky blue',
  'Vivid tangerine',
  'Vivid violet',
  'Volt',
  'Warm black',
  'Wheat',
  'White',
  'Wild blue yonder',
  'Wild orchid',
  'Wild Strawberry',
  'Wild watermelon',
  'Windsor tan',
  'Wine',
  'Wine dregs',
  'Winter Sky',
  'Wintergreen Dream',
  'Wisteria',
  'Wood brown',
  'Xanadu',
  'Xanthic',
  'Xanthous',
  'Yale Blue',
  'Yellow',
  'Yellow-green',
  'Yellow Orange',
  'Yellow Sunshine',
  'YInMn Blue',
  'Zaffre',
  'Zomp',
];
