module.exports = function(app) {
    var todoList = require('../controllers/users.controllers.js');
    //router.get('/hello', todoList.list_all_tasks)

    app.route('/lista_alumnos').get(todoList.lista_alumnos);
    app.route('/lista_eventos').get(todoList.lista_eventos);
    app.route('/persona_id/:taskId').get(todoList.lista_persona_id);
}