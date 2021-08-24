<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="wraper tms_wraper_top">
<div class="container tms_center_top">
<div class="row">
	[HEADER]
</div>
<div class="row">
	<div class="col-md-24">
		[TOP]
		{MODULE_CONTENT}
		[BOTTOM]
	</div>
</div>
<div class="row">
	[FOOTER]
</div>
</div>
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->