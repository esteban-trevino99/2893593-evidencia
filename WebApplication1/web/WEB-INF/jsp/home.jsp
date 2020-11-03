<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <%@include file="../includes/Bootstrap.jsp"%>
    </head>

    <body class="bg-light">
        <div id="app" class="container mt-3">
            <div class="row">
                <div class="col-12 bg-white p-3 mx-auto shadow">
                    <h1>Perfil</h1>
                    <hr>
                    <table>
                        <tr>
                            <th class="th">Nombre</th>
                            <td>Esteban Treviño Leyva</td>
                        </tr>
                        <tr>
                            <th class="th">Usuario</th>
                            <td>esteban_treley</td>
                        </tr>
                        <tr>
                            <th class="th">Sexo</th>
                            <td>Masculino</td>
                        </tr>
                        <tr>
                            <th class="th">Fecha de nacimiento</th>
                            <td>05/Julio/1999</td>
                        </tr>
                    </table>
                </div>
                <div class="col-12 bg-white p-3 mx-auto shadow mt-3">
                    <h1>Historial</h1>
                    <button @click="showAddHistory = !showAddHistory" class="btn btn-dark btn-sm">Agregar cálculo</button>
                    <div v-show="showAddHistory">
                        <div class="form-row mt-3">
                            <div class="col-lg-6">
                                <label>Weight</label>
                                <input class="form-control" step=".01" type="number" v-model="calculation.weight">
                            </div>
                            <div class="col-lg-6">
                                <label>Height</label>
                                <input class="form-control" step=".01" type="number" v-model="calculation.height">
                            </div>
                        </div>
                        <div class="form-row mt-2">
                            <div class="col-12 text-center">
                                <button class="btn btn-dark btn-sm" @click="addCalculation">Agregar cálculo</button>
                            </div>
                        </div>
                    </div>
                    <hr>

                    <div v-for="(h, index) in history" :key="index">
                        <p class="mb-0">Altura: {{h.height}}</p>
                        <p class="mb-0">Peso: {{h.weight}}</p>
                        <p class="mb-0">IMC: {{h.weight/((h.height/100)*(h.height/100))}}</p>
                        <p class="text-muted">Fecha creación: {{h.date}}</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                calculation: {},
                showAddHistory: false,
                history: [{
                    weight: 76.2,
                    height: 178,
                    date: "05/10/2020"
                }, {
                    weight: 80.2,
                    height: 176,
                    date: "05/08/2020"
                }, {
                    weight: 70.8,
                    height: 174,
                    date: "05/08/2018"
                }, {
                    weight: 64.1,
                    height: 173,
                    date: "05/08/2017"
                }, ]
            },
            methods: {
                addCalculation: function() {
                    const hoy = new Date()
                    const date = hoy.getDate().toString() + "/" + hoy.getMonth().toString() + "/" + hoy.getFullYear();
                    this.history.unshift({
                        ...this.calculation, date
                    })
                    this.showAddHistory = false;
                    this.calculation = {}
                }
            }
        })
    </script>

    </html>