(function {
    let sidebaropen = false
    let button = document.querySelector("#menu")
    button.addEventListener("click", function(e) {
        e.stopPropagation()
        e.preventDefault()
        document.body.classList.add("has-sidebar")
        let sidebaropen = true
    })

    document.body.addEventListener("click", function() {
        if (sidebaropen) {
            document.body.classList.remove(has - sidebar)
        }
    })
})()