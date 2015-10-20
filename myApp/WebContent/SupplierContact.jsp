<%@ include file="header1.jsp"%>
<title>Advent  | Contact</title>

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
				   <li class="btn btn-primary btn-block margin-bottom">Inwards</li>
                    <li class="active"><a href="supplierDetails"><i class="fa fa-fw fa-cube"></i>Supplier Details</a></li>
                    <li><a href="#"> <i class="fa fa-fw fa-cubes"></i>GRN</a></li>
                    <li><a href="contact"><i class="fa fa-fw fa-users"></i> Contacts</a></li>
                    <li><a href="#"><i class="fa fa-fw fa-server"></i>Add Item Details</a></li>
                   <!--  <li><a href="#"><i class="col-md-3 col-sm-4"></i> Junk <span class="label label-warning pull-right">65</span></a></li>
                    <li><a href="#"><i class="fa fa-trash-o"></i> Trash</a></li> -->
                  </ul>
                </div><!-- /.box-body -->
              </div><!-- /. box -->       
			 </div><!-- /.col -->
			 
			 
			 
			 
            <div class="col-md-9">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Supplier Details</h3>
                  <div class="box-tools pull-right">
                    <div class="has-feedback">
                      <!--<input type="text" class="form-control input-sm" placeholder="Search Mail">-->
                      <!--<span class="glyphicon glyphicon-search form-control-feedback"></span>-->
					  <button class="btn btn-block btn-info" id="btnPartyCreate">Create</button>
                    </div>
                  </div><!-- /.box-tools -->
                </div><!-- /.box-header -->
                
                <div class="box-footer no-padding">
                  <div class="mailbox-controls">
                   
				   
				   <!-- /. Db related div starts -->
				    <div class="box-body" id="viewContactDetails">
                 <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        
                        <th>Name</th>
                        <th>Code</th>
                        <th>VAT</th>
                        <th>CST</th>
                        <th>PAN</th>
                        <th width="20%">Address</th>
                        <th>Description</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <s:if test="%{supplierDtlsViewList != null }">
										<s:iterator begin="0" end="supplierDtlsViewList.size-1"
											status="itStatus">
											
											<tr>
											
												<td>
														
														<a href=editSupplierDtls?supplierDtlsId=<s:text name="supplierDtlsViewList[%{#itStatus.index}].supplierDtlsId" /> ><s:text
														name="supplierDtlsViewList[%{#itStatus.index}].supplier_name" /></a>
														</td>
												<td><s:text
														name="supplierDtlsViewList[%{#itStatus.index}].supplier_code" /></td> 
												<td><s:text
														name="supplierDtlsViewList[%{#itStatus.index}].vat" /></td>
														<td><s:text
														name="supplierDtlsViewList[%{#itStatus.index}].cst" /></td>
														<td><s:text
														name="supplierDtlsViewList[%{#itStatus.index}].pan" /></td> 	
													<td><s:text
														name="supplierDtlsViewList[%{#itStatus.index}].address" />													
														<s:text
														name="supplierDtlsViewList[%{#itStatus.index}].country_name" />/<s:text
														name="supplierDtlsViewList[%{#itStatus.index}].zone_name" />-  
														<s:text
														name="supplierDtlsViewList[%{#itStatus.index}].geocode" />
														</td>
														<td>
														<s:text name="supplierDtlsViewList[%{#itStatus.index}].description"></s:text>
														</td>
																																				
												
												  
											<td><a class="btn btn-default btn-warning" href=editParty?partyId=<s:text name="partyViewList[%{#itStatus.index}].partyId" /> ><i class="fa fa-fw fa-edit"></i></a>
												<a class=" btn btn-default btn-danger" href="deleteSupplier?supplierID=<s:text name="supplierDtlsViewList[%{#itStatus.index}].supplierID" />" ><i class="fa fa-fw fa-remove"></i></a></td>
											
											</tr>
										</s:iterator>
									</s:if>
                               
                                          
                    </tbody>                   
                  </table>
                </div>
				<!-- /. Db related div ends -->
				
				<!--start of div to create-->
				<div class="box-body" id="createContactDetails" style="display: none;">
				<form id="myform" action="insertSupplierDtls" method="post">
				<div class="row">
                <div class="col-md-6">
                  
                   <label>Name</label>   
                   <div class="form-group">                                     
                  <s:textfield id="supplier_name" cssClass="form-control"
					name="supplier_name" placeholder="Enter supplier name ..."/>
                  </div><!-- /.form-group -->                            
                </div><!-- /.col -->     
                 
                
              </div><!-- /.row -->
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                   <label>Select Supplier</label>                   
                  <s:select name="type_id" headerKey="-1" id="type_id"
					headerValue="--Select Supplier--" listKey="%{supplierID}"
					listValue="%{supplier_name}" cssClass="form-control select2" list="supplierList" style="width:100%" />                    
                  </div><!-- /.form-group -->          
                             
                </div><!-- /.col -->
                
                </div><!-- /.col -->
                
             
             
                  <div class="row">             
             <div class="col-md-6">
              <div class="form-group">
              <div>
              <label>Phone no</label>
              </div>
              <div class="col-xs-5">
                <s:textfield id="vat" cssClass="form-control"
					name="vat" placeholder="Enter Phone no ..."/>
                    </div>
              </div>
              
                </div>
                <div class="col-md-6">
              <div class="form-group">
              <div>
              <label>Email ID</label>
              </div>
              <div class="col-xs-5">
                 <s:textfield id="cst" cssClass="form-control"
					name="cst" placeholder="Enter Email id ..."/>
                    </div>
              </div>
              
                </div>
                
                 </div><!-- /.row -->
                 <br/>
             
               
                <div class="row">             
            <div class="col-md-6">
              <div class="form-group">
              <label>Comments</label>
                     
              <s:textarea id="description" cssClass="form-control"
					name="description" rows="3" placeholder="Comments ..."></s:textarea>
              </div>
              
                </div>
      
                </div><!-- /.row -->
              
               <div class="box-footer">
                    <button type="submit" id="submit" class="btn btn-primary">Submit</button>
                    <button id="btnItemCancel" class="btn btn-default">Cancel</button>
                  </div>
                  </form>
				</div>
				<!--end of div to create-->
				   
				   
                  </div>
                </div>
              </div><!-- /. box -->
            </div><!-- /.col -->
			
			
			
			

          </div><!-- /.row -->
      
		  
		  
		  
		  

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
    	
      
	  <%@ include file="footer.jsp"%>
	  
	  <!-- Select2 -->
    <script src="plugins/select2/select2.full.min.js"></script>
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

											$('#createContactDetails').css(
													'display', 'block');
											$('#viewContactDetails').css(
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

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
              ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
              },
              startDate: moment().subtract(29, 'days'),
              endDate: moment()
            },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
          checkboxClass: 'icheckbox_minimal-red',
          radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
          showInputs: false
        });
      });
    </script>

			
		  
		   </body>
</html>
		  