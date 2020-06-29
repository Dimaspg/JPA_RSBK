<%-- 
    Document   : corona
    Created on : Jun 18, 2020, 5:53:49 PM
    Author     : rafli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style2.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="nav">
              <div class="menu-links">
                <ul>
                    <li><a href="index.jsp" class="button">Home</a></li>
                  <li><a href="#" class="button">Data Kasus Virus Corona</a></li>
                  <li><a href="add.jsp" class="button">Ayo, Ikuti Survey</a></li>
                </ul>
              </div>
            </div>
            
            <!--KONTEN-->
            <div class="container">
                <h1 style="text-align: center; font-weight: bold">DATA KASUS VIRUS CORONA DI BERBAGAI NEGARA</h1>
                
                <div class="row">
                    <div class="col-md-12">
                    <h3 style="text-align: center; font-weight: bold">DI INDONESIA</h3>
                    </div>
                    <div class="col-md-4">
                        <div class="box" style="background-color: #DA425C">
                            <div class="row" style="padding: 5px">
                                <div class="col-md-6">
                                    <h5>Positif</h5>
                                    <h2 id="data-kasus" style="font-weight: bold"></h2>
                                    <h5>Orang</h5>
                                </div>
                                <div class="col-md-4">
                                    <img src="img/sad.svg" style="width: 100px">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box" style="background-color: #161A42">
                            <div class="row" style="padding: 5px">
                                <div class="col-md-6">
                                    <h5>Meninggal</h5>
                                    <h2 id="data-meninggal" style="font-weight: bold"></h2>
                                    <h5>Orang</h5>
                                </div>
                                <div class="col-md-4">
                                    <img src="img/cry.svg" style="width: 100px">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box" style="background-color: #2CC66D">
                            <div class="row" style="padding: 5px">
                                <div class="col-md-6">
                                    <h5>Sembuh</h5>
                                    <h2 id="data-sembuh" style="font-weight: bold"></h2>
                                    <h5>Orang</h5>
                                </div>
                                <div class="col-md-4">
                                    <img src="img/happy.svg" style="width: 100px">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-12 mt-4">
                        <div class="box" style="background-color: #fff">
                            <h4 style="text-align: center; color: black; font-weight: bold">Data Kasus Virus Corona Berbagai Negara</h4>
                            <div class="row" style="padding-top: 5px">
                                <table class="table table-hover" id="tabel">
                            <thead class="thead-dark">
<!--                                <th> No.</th>-->
                                <th> Negara</th>
                                <th> Positif</th>
                                <th> Sembuh</th>
                                <th> Meninggal</th>
                            </thead>
                            <tbody id="table-data">

                            </tbody>
                        </table>
                            </div>
                        </div>
                    </div>
                </div>
                
<!--                <div class="card mt-4">
                    <div class="card-header" style="color: black">
                        <b>Data Kasus Virus Corona di Dunia</b>
                    </div>
                    <div  class="card-body">
                        <table class="table table-hover" id="tabel">
                            <thead>
                                <th> No.</th>
                                <th> Negara</th>
                                <th> Positif</th>
                                <th> Sembuh</th>
                                <th> Meninggal</th>
                            </thead>
                            <tbody id="table-data">

                            </tbody>
                        </table>
                    </div>
                </div>-->
            </div>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.2/TweenMax.min.js"></script>
        <script>
            TweenMax.staggerFrom(".menu-links ul li", 1, {
              opacity: 0,
              x: -20,
              ease: Power3.easeInOut
            }, 0.08);
        </script>
        <script>
            $(document).ready(function(){
                
                semuaData();
                
                function semuaData(){
                    $.ajax({
                        url : 'http://coronavirus-19-api.herokuapp.com/countries/indonesia',
                        success : function(data){
                            try{
                                var json = data;
                                var kasus = data.cases;
                                var meninggal = data.deaths;
                                var sembuh = data.recovered;
                                
                                $('#data-kasus').html(kasus);
                                $('#data-meninggal').html(meninggal);
                                $('#data-sembuh').html(sembuh);
                            } catch{
                                alert('Error');
                            }
                        }
                    });
                }
            });
        </script>
        <script>
            fetch("http://coronavirus-19-api.herokuapp.com/countries").then(
                    res=>{
                        res.json().then(
                        data=>{
                            console.log(data);
                    if(data.length > 0){
                        var temp = "";
//                        var features=data.features;
//                        for (i=0;i<features.length;i++){
//                            var attributes = features[i].attributes;
//                            var Kode_Provi=attributes.Kode_Provi;
//                            dataCovid[Kode_Provi]=attributes;
//                            console.log(attributes);
//                            var list='<td>'+attributes.Provinsi+'</td>'+
//                                    '<td>'+attributes.Kasus_Posi+'</td>'+
//                                    '<td>'+attributes.Kasus_Meni+'</td>'+
//                                    '<td>'+attributes.Kasus_Semb+'</td>';
//                            document.getElementById("table-data").innerHTML = list;
//                        }
                        
                        data.forEach((u)=>{
                            temp +="<tr>";
                            temp +="<td>"+u.country+"</td>";
                            temp +="<td>"+u.cases+"</td>";
                            temp +="<td>"+u.recovered+"</td>";
                            temp +="<td>"+u.deaths+"</td></tr>";
                        })
                        
                        document.getElementById("table-data").innerHTML = temp;
                    }
                        })
                    })
        </script>
    </body>
</html>
