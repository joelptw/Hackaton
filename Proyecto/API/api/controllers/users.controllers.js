var Task = require('../models/app.model.js');

exports.lista_alumnos = function(req, res) {
    Task.listaAlumnos(function(err, task) {
  
      console.log('controller')
      if (err)
        res.send(err);
        console.log('res', task);
      res.send(task);
    });
  };

exports.lista_eventos = function(req, res) {
    Task.listaEventos(function(err, task) {
  
      console.log('controller')
      if (err)
        res.send(err);
        console.log('res', task);
      res.send(task);
    });
  };

exports.lista_persona_id = function(req,res) {
    Task.getPersonaById(req.params.taskId,function(err, task){
        console.log('controller')
        if (err)
          res.send(err);
          console.log('res', task);
        res.send(task);
    });
}

