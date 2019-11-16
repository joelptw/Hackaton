var sql = require('./db.js');

var Task = function(task){
    this.task = task.task;
    this.status = task.status;
    this.created_at = new Date();
};

Task.listaAlumnos = function (result) {
    sql.query("Select * from persona", function (err, res) {

            if(err) {
                console.log("error: ", err);
                result(null, err);
            }
            else{
              console.log('tasks : ', res);  

             result(null, res);
            }
        });   
};

Task.listaEventos = function (result) {
    sql.query("Select * from evento", function (err, res) {

            if(err) {
                console.log("error: ", err);
                result(null, err);
            }
            else{
              console.log('tasks : ', res);  

             result(null, res);
            }
        });   
};

Task.getPersonaById = function (taskId,result) {
    sql.query("Select * from persona where idpersona = ?", taskId, function (err, res) {

            if(err) {
                console.log("error: ", err);
                result(null, err);
            }
            else{
            console.log('tasks : ', res);  
             result(null, res);
            }
        });   
};


module.exports = Task;