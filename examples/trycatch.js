const actors = [{ name: "John", age: 18 }]

function actor_by_name(name) {

    for (actor of actors) {
        if (actor.name === name) {
            return actor
        }
    }
    throw Error(`Actor ${name} not exist`)
}

(function () {
    try {
        console.log(actor_by_name('John'))
        console.log(actor_by_name('Angelina'))
        
    } catch (e) {
        console.log(e);
    }
})()