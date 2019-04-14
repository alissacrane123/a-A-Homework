function madLib(verb, adj, noun) {
    console.log (`We shall ${verb.toUpperCase()} the ${adj} ${noun}`);
}

function isSubstring(search, sub) {
    return search.includes(sub);
}

function titleize(arr, cb) {
    let newArr = arr.map((name) => `Mx. ${name} Schmidt`);
    cb(newArr);
}

function printCallback(arr) {
    arr.forEach((name) => console.log(name));
}

class Elephant {
    constructor(name, height, tricksArr) {
        this.name = name;
        this.height = height;
        this.tricks = tricksArr;
    }

    trumpet() {
        console.log(`${this.name} goes 'phrRRRR!!'`);
    }

    grow() {
        this.height += 12;
    }

    addTrick(trick) {
        this.tricks.push(trick);
    }

    play() {
        let randIdx = Math.floor(Math.random() * (this.tricks.length));
        let randTrick = this.tricks[randIdx];
        console.log(`${this.name} is ${randTrick}!`);
    }

    static paradeHelper(elephant) {
        console.log(`${elephant.name} is trotting by!`);
    }
}

// let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
// let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
// let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
// let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

// let herd = [ellie, charlie, kate, micah];

// herd.forEach(Elephant.paradeHelper);

// function dinerBreakfast(food) {
//     let order = "I'd like cheesy scrambled eggs";
//     let newOrder = function () {
//         console.log(`order `)
//     }
// }

function dinerBreakfast() {
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);

    return function (food) {
        order = `${order.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    };
};

