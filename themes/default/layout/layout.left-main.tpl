<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="wraper tms_wraper_top">
<div class="container">
<div class="row">
	[HEADER]
</div>
<div class="row">
    <div class="col-sm-24 col-md-18 col-sm-push-0 col-md-push-6 tms_center_top">
        [TOP]
        {MODULE_CONTENT}
        [BOTTOM]
    </div>
	<div class="col-sm-6 col-md-6 col-sm-pull-18 col-md-pull-18  tms-an">
		[LEFT]
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