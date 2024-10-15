function toggleAbstract(id) {
    // Prevent the default anchor behavior (scrolling to top)
    event.preventDefault();

    // Get the abstract element by ID
    var abstract = document.getElementById(id);

    // Toggle visibility of the abstract
    if (abstract.style.display === "none" || abstract.style.display === "") {
        abstract.style.display = "block";
        // Add the active class to rotate the arrow
        document.querySelector(`[onclick="toggleAbstract('${id}')"]`).classList.add('active');
    } else {
        abstract.style.display = "none";
        // Remove the active class to reset the arrow
        document.querySelector(`[onclick="toggleAbstract('${id}')"]`).classList.remove('active');
    }
}