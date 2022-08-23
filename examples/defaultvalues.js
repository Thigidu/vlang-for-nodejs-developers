function get_order({
    food,
    size = 'Medium'
}) {
    return `${size} size ${food}`
}

order_1 = get_order({food: 'Pizza 🍕'})
order_2 = get_order({food: 'Beer 🍺', size: 'Large'})
console.log(order_1);
console.log(order_2);