const categories = document.getElementById('categories');
function getCategories() {
    fetch('/api/categories')
        .then(response => response.json())
        .then(data => {
console.log(data);
         categories.innerHTML = "";
                for(let i=0;i<data.length;i++){
                    const category = document.createElement('li');
                    category.textContent = data[i].category_name;
                    categories.appendChild(category);
                }
        });
}
getCategories();
const form =document.getElementById('create-category');
form.addEventListener('submit', (e) => {
    e.preventDefault();
    const category_name = document.getElementById('category_name').value;
    alert(category_name);
    fetch('/api/categories', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({category_name}),
    })
    .then(response => response.json())
    .then(data => {
        console.log(data);
        getCategories();
    });
});
