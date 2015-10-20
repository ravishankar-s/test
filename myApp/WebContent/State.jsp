<%@ include file="header1.jsp"%>
<title>Advent  | State</title>

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
         
          <!-- Default box -->
		  
		   <div class="row">
		   
            <div class="col-md-3">
             
              <div class="box box-solid">               
                <div class="box-body no-padding">
                  <ul class="nav nav-pills nav-stacked">
				   <li class="btn btn-primary btn-block margin-bottom">Settings</li>
                    <li><a href="country"><i class="fa fa-fw fa-cube"></i>Country</a></li>
                    <li class="active"><a href="state"> <i class="fa fa-fw fa-cubes"></i>State</a></li>
                    <li><a href="#"><i class="fa fa-fw fa-users"></i> Contacts</a></li>
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
                  <h3 class="box-title">State List</h3>
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
				    <div class="box-body" id="viewPartyDetails">
                 <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Serial Number</th>
                        <th>Country Name</th>
                        <th>State Name</th>
                        <th>State Code</th>                      
                       <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <s:if test="%{stateViewList != null }">
										<s:iterator begin="0" end="%{stateViewList.size()-1}"
											status="itStatus">
											
											<tr>											
												<td>
												<s:text	name="stateViewList[%{#itStatus.index}].zoneId" />														
												</td>
												<td>
												<s:text name="stateViewList[%{#itStatus.index}].countryName" />
												</td> 
												<td>
												<s:text name="stateViewList[%{#itStatus.index}].zoneName" />
												</td>
												<td>
												<s:text name="stateViewList[%{#itStatus.index}].zoneCode" />
												</td>				
												<td>
												<a href=editParty?partyId=<s:text name="partyViewList[%{#itStatus.index}].partyId" /> >Edit</a>
												<a href=deleteParty?partyId=<s:text name="partyViewList[%{#itStatus.index}].partyId" /> >Delete</a>
												</td>
											</tr>
										</s:iterator>
									</s:if>
                               
                                          
                    </tbody>                   
                  </table>
                </div>
				<!-- /. Db related div ends -->
				
				<!--start of div to create-->
				<div class="box-body" id="createPartyDetails" style="display: none;">
				<div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                   <label>Country Name</label>
                   <input type="text" class="form-control" name="name" id="name" placeholder="Enter ...">              
                  
                  </div><!-- /.form-group -->                             
                </div><!-- /.col -->     
                <div class="col-md-6">
                 <div class="col-xs-5">
                   <label>Country Code</label>
                   <input type="text" class="form-control" name="name" id="name" placeholder="Enter ...">              
                  
                  </div><!-- /.form-group -->                             
                </div>                                           
              </div><!-- /.row -->           
              
               <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="submit" class="btn btn-default">Cancel</button>
                  </div>
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
		  