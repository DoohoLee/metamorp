module.exports = function(app) {

    // View Controller
    app.get('/', function(req, res){
        res.render('index.html');
    });

    app.get('/login', function(req, res){
        console.log('login-Connected');
        res.render('login.html');
    });

    app.get('/admin', function(req, res){
        res.render('admin.html');
    });

    app.get('/home', function(req, res){
        res.render('index.html');
    })

    app.get('/2Dview', function(req, res){
        res.render('2Dview.html');
    })

    app.get('/3Dview', function(req, res){
        res.render('3Dview.html');
    })

    app.get('/3D_Edit', function(req, res){
        console.log("3D_Edit");
        res.render('view.html');
    });
    
    app.get('/modify', function(req, res){
        console.log("modify");
        res.render('modify.html');
    });

    app.get('/edit_eml', function(req, res){
        res.render('edit_eml.html');
    });

    app.get('/edit_pwd', function(req, res){
        res.render('edit_pwd.html');
    });

}