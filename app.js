const express = require('express');
const app = express();
const path = require('path');

app.set('view engine', 'ejs');

app.set('views','./views');

app.use(express.static('public'));

//app.use(express.urlencoded());

//const mainController = require('./controllers/mainController');
<<<<<<< HEAD
const mainRouter = require('./routes/mainRouter');


//app.get('/', mainController.index);

app.use('/',mainRouter); 

//app.get('/', (req, res) => {
//     const archivo = path.join(__dirname, './views/home.html')
//     res.sendFile(archivo);
// });

// app.get('/frame', (req,res) =>{
//     res.sendFile(path.join(__dirname,'/views/frame.html'))
// })

// app.get('/product', (req,res) =>{
//     res.sendFile(path.join(__dirname,'/views/product.html'))
// })

// app.get('/shopping-cart', (req,res) =>{
//     res.sendFile(path.join(__dirname,'/views/shopping-cart.html'))
// })

// app.get('/signup', (req, res) => {
//     const archivo = path.join(__dirname, './views/signup.html')
//     res.sendFile(archivo);
// });

// app.post('/signup', (req, res) => {
//     req.body;
//     res.redirect('/');
// });

// app.get('/signin', (req, res) => {
//     const archivo = path.join(__dirname, './views/signin.html')
//     res.sendFile(archivo);
// });
=======
//const mainRouter = require('./routes/mainRouter');

/*
app.get('/', mainController.index);
*/
app.get('/product', (req,res) =>{
    res.sendFile(path.join(__dirname,'/views/productv2.html'))
})

app.get('/productSearch', (req,res) =>{
    res.sendFile(path.join(__dirname,'/views/productSearch.html'))
})

//app.use('/',mainRouter); 

 app.get('/', (req, res) => {
     const archivo = path.join(__dirname, './views/home.html')
     res.sendFile(archivo);
 });

 app.get('/frame', (req,res) =>{
     res.sendFile(path.join(__dirname,'/views/frame.html'))
 })

 app.get('/product', (req,res) =>{
     res.sendFile(path.join(__dirname,'/views/product.html'))
 })

 app.get('/shopping-cart', (req,res) =>{
     res.sendFile(path.join(__dirname,'/views/shopping-cart.html'))
 })

 app.get('/signup', (req, res) => {
     const archivo = path.join(__dirname, './views/signup.html')
     res.sendFile(archivo);
 });

 app.post('/signup', (req, res) => {
     req.body;
     res.redirect('/');
 });

app.get('/signin', (req, res) => {
     const archivo = path.join(__dirname, './views/signin.html')
     res.sendFile(archivo);
 });
>>>>>>> 98a08b11b2e7e83a6f681aacb42faa07f4fcc120
app.listen(3000, () => {
    console.log("Servidor corriendo");
});
