<!-- BEGIN: main -->
<!-- BEGIN: empty -->
<p class="text-center">
	<button class="btn btn-primary content-add-trigger">{LANG.content_add}</button>
</p>
<div class="alert alert-danger">{LANG.performance_note}</div>
<!-- END: empty -->
<!-- BEGIN: rows -->
<div class="clearfix m-bottom">
	<button class="btn btn-primary content-add-trigger">{LANG.content_add}</button>
</div>
<div class="clearfix" id="content-list-container">

	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<colgroup>
			<col class="w100">
			<col>
			<col  class="w200">
		</colgroup>
		<thead>
			<tr class="text-center">
				<th>{LANG.order}</th>
				
				<th>{LANG.title}</th>
				<th>{LANG.status}</th>
				<th>{LANG.feature}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: loop -->
			<tr id="content-row-{ROW.id}" class="content-list">
				<td class="text-center">
				
				<select class="form-control" id="id_weight_{ROW.id}" onchange="nv_chang_weight({BID},{ROW.id},'weight');">
						<!-- BEGIN: weight -->
						<option value="{WEIGHT.key}"{WEIGHT.selected}>{WEIGHT.title}</option>
						<!-- END: weight -->
					</select>
				
				</td>
				
				<td><a href="{ROW.url_view}" title="{ROW.title}" target="_blank">{ROW.title}</a></td>
			
				<td class="text-center">
				
				<a title="{ROW.status_text}" class="btn btn-sm btn-default content-status ct-status{ROW.status}" data-id="{ROW.id}" data-status="{ROW.status}" href="#"><i class="fa fa-circle"></i></a>
				</td>
				<td class="text-center">
					<a title="{GLANG.edit}" class="btn btn-sm btn-default content-edit" data-id="{ROW.id}" href="#"><i class="fa fa-edit"></i></a>
					<a title="{GLANG.delete}" class="btn btn-sm btn-default content-delete" data-id="{ROW.id}" data-title="{ROW.title}" href="#"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
			<!-- END: loop -->
		</tbody>
	</table>
</div>
</div>
<div class="clearfix">
	<div class="pull-right">{LANG.content_total_rows}: <strong id="content-couter" data-total="{NUM_ROWS}">{NUM_ROWS}</strong></div>
</div>
<!-- END: rows -->
<div class="modal fade" id="content-data">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3 class="modal-title">{LANG.content_add_edit}</h3>
			</div>
			<div class="modal-body">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="content-title" class="col-sm-5 control-label">{LANG.content_title}</label>
						<div class="col-sm-19">
							<input type="text" class="form-control txt ip" id="content-title" name="title">
						</div>
					</div>
				
					
					<div class="form-group">
						<label for="content-image" class="col-sm-5 control-label">File mp3</label>
						<div class="col-sm-19">
							<div class="row">
								<div class="col-xs-16">
									<input type="text" class="form-control txt ip" id="content-image" name="image">
								</div>
								<div class="col-xs-8">
									<input type="button" name="select-image" data-path="{UPLOADS_DIR_USER}" data-area="content-image" data-currentpath="{UPLOADS_DIR_USER}" id="content-select-image" value="Chọn file mp3" class="btn btn-default ip">
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="content-status" class="col-sm-5 control-label">{LANG.content_status_active}</label>
						<div class="col-sm-19">
							<div class="row">
								<div class="col-xs-8">
									<div class="checkbox">
										<div class="checkbox">
											<label>
												<input class="ip" type="checkbox" id="content-status" name="status" value="1">
											</label>
										</div>
									</div>
								</div>
								<div class="col-xs-8">
									<div class="checkbox text-right">
										<label for="content-exptime">
											{LANG.content_exptime}
										</label>
									</div>
								</div>
								<div class="col-xs-8">
									<input type="text" class="form-control txt ip" id="content-exptime" name="exptime" value="" placeholder="{LANG.content_exptime_note}">
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="id" id="block-id" value="" class="txt">
					<input type="hidden" name="bid" id="block-bid" value="{BID}">
				</form>			
			</div>
			<div class="modal-footer">
				<span class="per-loading"> <i class="fa fa-circle-o-notch fa-spin"></i> </span>
				<button type="button" class="btn btn-default" data-dismiss="modal">{GLANG.cancel}</button>
				<button type="button" class="btn btn-primary content-submit-trigger">{GLANG.save}</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="content-delete">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3 class="modal-title">{LANG.content_delete}</h3>
			</div>
			<div class="modal-body">
				<p class="text-danger confirm">{LANG.content_delete_confirm}</p>
				<p class="text-center loading">
					<em class="fa fa-circle-o-notch fa-spin fa-2x"></em>
				</p>	
				<p class="text-center message"></p>	
				<p class="text-center success text-success">
					<em class="fa fa-check-circle fa-2x"></em>
				</p>	
			</div>
			<div class="modal-footer">
				<input type="hidden" name="id" value="">
				<button type="button" class="btn btn-default" data-dismiss="modal">{GLANG.cancel}</button>
				<button type="button" class="btn btn-primary content-delete-trigger">{GLANG.delete}</button>
			</div>
		</div>
	</div>
</div>
<!-- END: main -->