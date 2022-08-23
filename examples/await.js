function task(value) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve('Completed')
        }, 1e3)
    })
}

(function () {
    Promise.all([
        task(1),
        task(2),
        task(3)
    ])
        .then(result => console.log(result))
        .catch(err => console.error(err))
})()

