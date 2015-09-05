<%@ include file="header.jsp"%>
<div id="wrap">
			<div class="row">
				<div class="col-md-12">
				   <div class="panel panel-grape">
                        <div class="panel-body">
                             	<s:if test="%{permissionlist != null }">
					<s:iterator begin="0" end="permissionlist.size-1" status="itStatus">

						<s:if
							test="%{permissionlist[#itStatus.index].createUser == 'true'}">
                            <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-12 clearfix">
                                    <div class="btn-group pull-right">
                                    </div>
                                </div>
											</div>
				
											<div class="col-xs-9 col-md-2 col-sm-3 col-lg-2.5">
												<a class="info-tiles tiles-orange" href="partyDetilsInsert">
													<div class="tiles-heading">
														<div class="pull-left">Party</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa  fa-renren"></i>
														</div>
														<div class="pull-right">
															<div id="indexinfolikes"
																style="margin-top: 5px; margin-bottom: -10px;"></div>
														</div>
													</div>
												</a>
											</div>
											<div class="col-xs-12 col-md-2 col-sm-6 col-lg-2.5">
												<a class="info-tiles tiles-success" href="itemDetailsInsert">
													<div class="tiles-heading">
														<div class="pull-left">Item</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa fa-glass"></i>
														</div>
													</div>
												</a>
											</div>
											<div class="col-xs-12 col-md-2 col-sm-6 col-lg-2.5">
												<a class="info-tiles tiles-green" href="documentTypesInsert">
													<div class="tiles-heading">
														<div class="pull-left">Document</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa fa-book"></i>
														</div>
														<div class="pull-right">
														</div>
													</div>
												</a>
											</div>
											<div class="col-xs-12 col-md-2 col-sm-6 col-lg-2.5">
												<a class="info-tiles tiles-purple" href="tax">
													<div class="tiles-heading">
														<div class="pull-left">VAT</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa fa-rupee"></i>
														</div>
														<div class="pull-right">
														</div>
													</div>
												</a>
											</div>
										</div>
										</s:if>
											</s:iterator>
											</s:if>
							<div class="row">
                                <div class="col-md-12 clearfix">
                                    <h4 class="pull-left" style="margin:0 0 10px"><small></small></h4>
                                    <div class="btn-group pull-right">
                                    </div>
                                </div>
											
												<s:if test="%{permissionlist != null }">
					<s:iterator begin="0" end="permissionlist.size-1" status="itStatus">

						<s:if
							test="%{permissionlist[#itStatus.index].createmaster == 'true'}">
				
											<div class="col-xs-10 col-md-2 col-sm-6 col-lg-2">
												<a class="info-tiles tiles-magenta" href="user">
													<div class="tiles-heading">
														<div class="pull-left">Users</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa  fa-user"></i>
														</div>
														<div class="pull-right">
															<div id="indexinfolikes"
																style="margin-top: 10px; margin-bottom: -10px;"></div>
														</div>
													</div>
												</a>
											</div>
											</s:if>
											</s:iterator>
											</s:if>
											<s:if test="%{permissionlist != null }">
					<s:iterator begin="0" end="permissionlist.size-1" status="itStatus">

						<s:if
							test="%{permissionlist[#itStatus.index].role == 'true'}">
											<div class="col-xs-12 col-md-2 col-sm-6 col-lg-2.5">
												<a class="info-tiles tiles-danger" href="roles">
													<div class="tiles-heading">
														<div class="pull-left">Roles</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa fa-male"></i>
														</div>
													</div>
												</a>
											</div>
											</s:if>
											</s:iterator>
											</s:if>
							<s:if test="%{permissionlist != null }">
					<s:iterator begin="0" end="permissionlist.size-1" status="itStatus">

						<s:if
							test="%{permissionlist[#itStatus.index].permissionsetting == 'true'}">
											<div class="col-xs-12 col-md-2 col-sm-6 col-lg-2.5">
												<a class="info-tiles tiles-warning" href="permissionsetting">
													<div class="tiles-heading">
														<div class="pull-left">Permissions</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa fa-wrench"></i>
														</div>
													</div>
												</a>
											</div>
											</s:if>
											</s:iterator>
											</s:if>
										</div>
							 <div class="row">
                                <div class="col-md-12 clearfix">
                                    <h4 class="pull-left" style="margin:0 0 10px"><small></small></h4>
                                    <div class="btn-group pull-right">
                                    </div>
                                </div>
											<div class="col-xs-12 col-md-2 col-sm-6 col-lg-2.5">
												<a class="info-tiles tiles-primary" href="purchase">
													<div class="tiles-heading">
														<div class="pull-left">(GRN) Preparation</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa fa-pencil-square"></i>
														</div>
														<div class="pull-right">
															<div id="indexinfolikes"
																style="margin-top: 10px; margin-bottom: -10px;"></div>
														</div>
													</div>
												</a>
											</div>
											<div class="col-xs-12 col-md-2 col-sm-6 col-lg-2.5">
												<a class="info-tiles tiles-info" href="deliveryInsert">
													<div class="tiles-heading">
														<div class="pull-left">Delivery Preparation</div>
													</div>
													<div class="tiles-body">
														<div class="pull-left">
															<i class="fa fa-pencil-square"></i>
														</div>
															<div id="indexinfolikes"
																style="margin-top: 10px; margin-bottom: -10px;"></div>
														</div>
													</div>
												</a>
											</div>
										</div>
										
							 
										
                        </div>
                    </div>
			</div>
		</div> <!-- row -->
		
		<div class="row">
				<div class="col-sm-12">
				  <div class="panel panel-primary">
				  
				  
				  
				  
				  
				  
				  
				  
				   
				  </div>
			</div>
		</div> <!-- row -->   
		<div class="row">
				<div class="col-sm-12">
				  <div class="panel panel-primary">
				  
				 
				 
				 
				 
				 
				 
				 
				 
				  </div>
			</div>
		</div> <!-- row -->   
	<!--  </div> container -->
 </div> <!-- wrap -->




<%@ include file="footer.jsp"%>
