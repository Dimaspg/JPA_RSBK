<%-- 
    Document   : index
    Created on : Jun 17, 2020, 10:55:46 PM
    Author     : rafli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rapid Test Survey</title>
        <!-- MATERIAL DESIGN ICONIC FONT -->
        <link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

        <!-- DATE-PICKER -->
        <link rel="stylesheet" href="vendor/date-picker/css/datepicker.min.css">

        <!-- STYLE CSS -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
       <div class="wrapper">
                <div class="image-holder">
                        <img src="img/form-wizard.png" alt="">
                </div>
            <form method="post" action="Servlet?action=add">
            	<div class="form-header">
                    <a href="index.jsp">#DiRumahAja</a>
                    <h3>Survey Rapid Test Covid-19</h3>
            	</div>
               
            	<div id="wizard">
            		<!-- SECTION 1 -->
	                <h4></h4>
	                <section>
	                    <div class="form-row" >
	                    	<label for="">
	                    		Nama:
	                    	</label>
	                    	<div class="form-holder">
                                    <input type="text" class="form-control" name="nama">
	                    	</div>
	                    </div>
                            <div class="form-row">
	                    	<label for="">
	                    		Jenis Kelamin:
	                    	</label>
	                    	<div class="form-holder">
                                    <div class="checkbox-circle">
                                        <label class="male">
                                            <input type="radio" name="gender" value="Laki-laki" checked> Laki-laki<br>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="female">
                                            <input type="radio" name="gender" value="Perempuan"> Perempuan<br>
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
	                    	</div>
	                    </div>
                            <div class="form-row">
	                    	<label for="">
	                    		Umur:
	                    	</label>
	                    	<div class="form-holder">
                                    <input type="text" class="form-control" name="umur">
                                    
	                    	</div>
                                
	                    </div>	
	                    <div class="form-row">
	                    	<label for="">
	                    		Alamat:
	                    	</label>
	                    	<div class="form-holder">
                                    <textarea type="text" class="form-control" name="alamat"></textarea>
	                    	</div>
	                    </div>
	                    <div class="form-row">
	                    	<label for="">
	                    		Riwayat Penyakit:
	                    	</label>
	                    	<div class="form-holder">
                                    <input type="text" class="form-control" name="riwayat">
	                    	</div>
	                    </div>
	                </section>
	                
					<!-- SECTION 2 -->
	                <h4></h4>
	                <section>
	                    <div style="text-align: center">
                                <h4 for="" style="text-align: center">
	                    		Apakah anda mendukung jika akan diadakan Rapid Test secara masal? dan berikan alasannya!
	                    	</h4>
                                
	                    </div>
                            <br>
                            <div>
                                <div class="form-holder">
                                    <textarea type="text" class="form-control" placeholder="Tulis disini" style="height: 200px" name="pertanyaan1"></textarea>
	                    	</div>
                            </div>
	                </section>

	                <!-- SECTION 3 -->
	                <h4></h4>
	                <section>
	                    <div style="text-align: center">
                                <h4 for="" style="text-align: center">
	                    		Apakah jika diadakan Rapid Test secara gratis anda bersedia untuk melakukan test tersebut?
	                    	</h4>
                                
	                    </div>
                            <br>
                            <div>
                                <div class="form-holder" style="padding: 0px 150px">
                                    <div class="checkbox-circle">
                                        <label class="ya">
                                            <input type="radio" name="pertanyaan2" value="Ya" checked> Ya<br>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="tidak">
                                            <input type="radio" name="pertanyaan2" value="Tidak"> Tidak<br>
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
	                    	</div>
                            </div>
	                </section>
                        
                        <!-- SECTION 4 -->
	                <h4></h4>
	                <section>
	                    <div style="text-align: center">
                                <h4 for="" style="text-align: center">
	                    		Menurut pendapat anda apakah Rapid Test ini mempunyai hasil yang akurat?
	                    	</h4>
                                
	                    </div>
                            <br>
                            <div>
                                <div class="form-holder">
                                    <textarea type="text" class="form-control" placeholder="Tulis disini" style="height: 200px" name="pertanyaan3"></textarea>
	                    	</div>
                            </div>
	                </section>
                        
                        <!-- SECTION 5 -->
	                <h4></h4>
	                <section>
	                    <div style="text-align: center">
                                <h4 for="" style="text-align: center">
	                    		Menurut pendapat anda, apakah Rapid Test ini efektif untuk mendeteksi virus corona?
	                    	</h4>
                                
	                    </div>
                            <br>
                            <div>
                                <div class="form-holder">
                                    <textarea type="text" class="form-control" placeholder="Tulis disini" style="height: 200px" name="pertanyaan4"></textarea>
	                    	</div>
                            </div>
	                </section>
                        
                        <!-- SECTION 6 -->
	                <h4></h4>
	                <section>
	                    <div style="text-align: center">
                                <h4 for="" style="text-align: center">
	                    		Seberapa pedulikah anda dengan penanganan virus corona?
	                    	</h4>
                                
	                    </div>
                            <br>
                            <div>
                                <div class="form-holder">
                                    <textarea type="text" class="form-control" placeholder="Tulis disini" style="height: 200px" name="pertanyaan5"></textarea>
	                    	</div>
                            </div>
	                </section>
            	</div>
            </form>
		</div>

		<script src="js/jquery-3.3.1.min.js"></script>
		
		<!-- JQUERY STEP -->
		<script src="js/jquery.steps.js"></script>
		<script src="js/main.js"></script>
    </body>
</html>
