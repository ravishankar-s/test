<%@ include file="header1.jsp"%>
<title>Advent  | Settings</title>

<!-- Select2 -->
    <link rel="stylesheet" href="plugins/select2/select2.min.css">

<%@ include file="header2.jsp"%>
<!-- for menus -->
<li ><a href="#">Pettycash <span class="sr-only">(current)</span></a></li>
                <li><a href="#">User Management</a></li>
               
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle, active" data-toggle="dropdown">Asset Management <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="inwards">Inwards</a></li>
                    <li><a href="outwards">Outwards</a></li>
                 
                    <li><a href="assets">Assets</a></li>      
                    <li><a href="settings">Settings</a></li>            
                  
                  </ul>
                </li>
       
                
                <!-- <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">MasterPages <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                    <li class="divider"></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li> -->
                
    <%@ include file="header3.jsp"%>    
    
    
    
    
    
    
    
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           Asset management
            <!--<small>Blank example to the fixed layout</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Asset Management</a></li>
            <li class="active">Inwards</li>
          </ol>
        </section>

		
		
        <!-- Main content -->
        <section class="content">
          <!--<div class="callout callout-info">
            <h4>Tip!</h4>
            <p>Add the fixed class to the body tag to get this layout. The fixed layout is your best option if your sidebar is bigger than your content because it prevents extra unwanted scrolling.</p>
          </div>-->
          <!-- Default box -->
		  
		   <div class="row">
		   
            <div class="col-md-3">
             
              <div class="box box-solid">               
                <div class="box-body no-padding">
                  <ul class="nav nav-pills nav-stacked">
				   <li class="btn btn-primary btn-block margin-bottom">Settings</li>
                    <li class="active"><a href="country"><i class="fa fa-fw fa-cube"></i>Country</a></li>
                    <li><a href="state"> <i class="fa fa-fw fa-cubes"></i>State</a></li>
                    <li><a href="#"><i class="fa fa-fw fa-users"></i> Contacts</a></li>
                    <li><a href="#"><i class="fa fa-fw fa-server"></i> Item Details</a></li>
                   <!--  <li><a href="#"><i class="col-md-3 col-sm-4"></i> Junk <span class="label label-warning pull-right">65</span></a></li>
                    <li><a href="#"><i class="fa fa-trash-o"></i> Trash</a></li> -->
                  </ul>
                </div><!-- /.box-body -->
              </div><!-- /. box -->       
			 </div><!-- /.col -->
			 
			 
			 
			 
            <div class="col-md-9">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Settings Dashboard</h3>
                  <div class="box-tools pull-right">
                    <div class="has-feedback">
                      <!--<input type="text" class="form-control input-sm" placeholder="Search Mail">-->
                      <!--<span class="glyphicon glyphicon-search form-control-feedback"></span>-->
					 <!--  <button class="btn btn-block btn-info" id="btnPartyCreate">Create</button> -->
                    </div>
                  </div><!-- /.box-tools -->
                </div><!-- /.box-header -->
                
                <div class="box-footer no-padding">
            <!--       <div class="mailbox-controls">
                   
				   
				   /. Db related div starts
				    <div class="box-body" id="viewPartyDetails">
                 <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th width="8%">Sl no</th>
                        <th>Name</th>
                        <th>VAT</th>
                        <th>CST</th>
                        <th>PAN</th>
                        <th width="20%">Address</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                       <td>1</td>
                        <td><a href="#">Reach Automation</a></td>
                        <td>29910587574</td>                          
                        <td>29910587574</td>
                        <td>AAECR9626E</td>
                        <td>32/3, Nirupam Arcade, 3rd Floor, 1st Main, Domlur Layout, Bangalore</td>
                        <td>
                        <button class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></button>
                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>                     
                        </td>
                      </tr>
                      <tr>
                       <td>2</td>
                        <td>Trident</td>
                        <td>Internet
                          Explorer 5.0</td>
                        <td>Win 95+</td>
                        <td>5</td>
                           <td>Address125</td>
                        <td>
                        <button class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></button>
                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>                     
                                           
                        </td>
                      </tr>                
                                          
                    </tbody>                   
                  </table>
                </div>
				/. Db related div ends
				
				start of div to create
				<div class="box-body" id="createPartyDetails" style="display: none;">
				<div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                   <label>Name</label>
                   <input type="text" class="form-control" placeholder="Enter ...">
                     <select class="form-control select2" style="width: 100%;">
                      <option selected="selected">Alabama</option>
                      <option>Alaska</option>
                      <option>California</option>
                      <option>Delaware</option>
                      <option>Tennessee</option>
                      <option>Texas</option>
                      <option>Washington</option>
                    </select>                    
                    
                  </div>/.form-group          
                             
                </div>/.col
                
                 
                
              </div>/.row
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                   <label>Country</label>
                  
                    <select class="form-control select2" style="width: 100%;">
                      <option selected="selected">India</option>
                      <option>Pak</option>
                      <option>California</option>
                      <option>Delaware</option>
                      <option>Tennessee</option>
                      <option>Texas</option>
                      <option>Washington</option>
                    </select> 
                    
                  </div>/.form-group          
                             
                </div>/.col
                
                 <div class="col-md-6">
                 
                  <div class="form-group">
                    <label>State</label>
                    <select class="form-control select2" style="width: 100%;">
                      <option selected="selected">Assam</option>
                      <option>AP</option>
                      <option disabled="disabled">California (disabled)</option>
                      <option>Delaware</option>
                      <option>Tennessee</option>
                      <option>Texas</option>
                      <option>Washington</option>
                    </select>
                  </div>/.form-group
                </div>/.col
                
              </div>/.row
              <div class="row">
              <div class="col-md-6">
              <div class="form-group">
              <label>Address</label>
                      <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
              
              </div>
              
                </div>/.col
                <div class="col-md-6">
              <div class="form-group">
              <div>
              <label>Pin</label>
              </div>
              <div class="col-xs-5">
                      <input type="text" class="form-control" placeholder=".col-xs-5">
                    </div>
              </div>
              
                </div>/.col
                 </div>/.row
                 
                  <div class="row">
             
             <div class="col-md-6">
              <div class="form-group">
              <div>
              <label>VAT</label>
              </div>
              <div class="col-xs-5">
                      <input type="text" class="form-control" placeholder=".col-xs-5">
                    </div>
              </div>
              
                </div>
                <div class="col-md-6">
              <div class="form-group">
              <div>
              <label>CST</label>
              </div>
              <div class="col-xs-5">
                      <input type="text" class="form-control" placeholder=".col-xs-5">
                    </div>
              </div>
              
                </div>
                
                 </div>/.row
                 
                  <div class="row">
             
             <div class="col-md-6">
              <div class="form-group">
              <div>
              <label>PAN</label>
              </div>
              <div class="col-xs-5">
                      <input type="text" class="form-control" placeholder=".col-xs-5">
                    </div>
              </div>              
                </div>
                
                
                 </div>/.row
              
               <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="submit" class="btn btn-default">Cancel</button>
                  </div>
				</div>
				end of div to create
				   
				   
                  </div> -->
                </div>
              </div><!-- /. box -->
            </div><!-- /.col -->
			
			
			
			

          </div><!-- /.row -->
      
		  
		  
		  
		  

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
    	
      
	  <%@ include file="footer.jsp"%>
	  
	  <!-- Select2 -->
    <script src="../../plugins/select2/select2.full.min.js"></script>
     <script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>
	<script>
	//This script is used to hide the create div
	$(document)
			.ready(
					function() {
						$('#btnPartyCreate')
								.click(
										function(e) {

											$('#createPartyDetails').css(
													'display', 'block');
											$('#viewPartyDetails').css(
													'display', 'none');
											$('#btnPartyCreate').css('display',
													'none');
											$("#partyform input[type=text]").val("");
											$("#partyform select").prop("selectedIndex", 0);

											e.preventDefault();

										});
						
						$('#addp').click(function(e) {

							$('#addph').css('display', 'block');
							e.preventDefault();

						});
						$('#adde').click(function(e) {
							$('#addem').css('display', 'block');
							e.preventDefault();
						});
					});
</script>		
<script>
$(function () {
    //Initialize Select2 Elements
    $(".select2").select2();
});
</script>				
		  
		   </body>
</html>
		  