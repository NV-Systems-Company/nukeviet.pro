<!-- BEGIN: main -->
<!-- BEGIN: listcat -->
<div class="news_column">
<div class="tms_cat clearfix">	
<div class="tms_cat_title">
<h2><i class="fa fa-bars"></i><a title="{CAT.title}" href="{CAT.link}">{CAT.title}</a></h2>
<div class="tms_cat_right">
<ul class="list-inline sub-list-icon" style="margin: 0">
				
				<!-- BEGIN: subcatloop -->
				<li class="hidden-xs"><h4><a class="dimgray" title="{SUBCAT.title}" href="{SUBCAT.link}">{SUBCAT.title}</a></h4></li>
				<!-- END: subcatloop -->
				<!-- BEGIN: subcatmore -->
				<a class="dimgray pull-right hidden-xs" title="{MORE.title}" href="{MORE.link}"><em class="fa fa-sign-out">&nbsp;</em></a>
				<!-- END: subcatmore -->
			</ul>
	</div>			
<div class="clear"></div>
	</div>
		<!-- BEGIN: block_topcat -->
		<div class="block-top clear">
			{BLOCK_TOPCAT}
		</div>
		<!-- END: block_topcat -->
		<div class="tms_body">
			<div class="row">
					<!-- BEGIN: home1 -->
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 tms_bg_news">
					<!-- BEGIN: image -->
					<a title="{CONTENT.title}" href="{CONTENT.link}" {CONTENT.target_blank}><img src="{HOMEIMG}" alt="{HOMEIMGALT}" class="img-thumbnail pull-left tms_cat_img imghome" /></a>
					<!-- END: image -->
					<h3>
						<a title="{CONTENT.title}" href="{CONTENT.link}" {CONTENT.target_blank}>{CONTENT.title_01}</a>
						<!-- BEGIN: newday -->
						<span class="icon_new"></span>
						<!-- END: newday -->
					</h3>
					<div class="text-muted">
						<ul class="list-unstyled list-inline">
							<li><em class="fa fa-clock-o">&nbsp;</em> {CONTENT.publtime}</li>
							<li><em class="fa fa-eye">&nbsp;</em> {CONTENT.hitstotal}</li>
							<!-- BEGIN: comment -->
							<li><em class="fa fa-comment-o">&nbsp;</em> {CONTENT.hitscm}</li>
							<!-- END: comment -->
						</ul>
					</div>
					<div class="tms_hometext">{CONTENT.hometext}</div>
				</div>
				<!-- END: home1 -->
					
				<!-- BEGIN: home2 -->
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 tms_bg_news">
					<!-- BEGIN: image -->
					<a title="{CONTENT.title}" href="{CONTENT.link}" {CONTENT.target_blank}><img src="{HOMEIMG}" alt="{HOMEIMGALT}"  class="img-thumbnail pull-left tms_cat_img imghome" /></a>
					<!-- END: image -->
					<h3>
						<a title="{CONTENT.title}" href="{CONTENT.link}" {CONTENT.target_blank}>{CONTENT.title_01}</a>
						<!-- BEGIN: newday -->
						<span class="icon_new"></span>
						<!-- END: newday -->
					</h3>
					<div class="text-muted">
						<ul class="list-unstyled list-inline">
							<li><em class="fa fa-clock-o">&nbsp;</em> {CONTENT.publtime}</li>
							<li><em class="fa fa-eye">&nbsp;</em> {CONTENT.hitstotal}</li>
							<!-- BEGIN: comment -->
							<li><em class="fa fa-comment-o">&nbsp;</em> {CONTENT.hitscm}</li>
							<!-- END: comment -->
						</ul>
					</div>
					<div class="tms_hometext">{CONTENT.hometext}</div>
				</div>
				<!-- END: home2 -->
				
					

				<!-- BEGIN: related -->
				<div class="col-lg-8 col-md-8 col-sm-24 col-xs-24">
					<ul class="related">
						<!-- BEGIN: loop -->
						<li class="{CLASS}">
						<img src="{OTHER.imghome}" alt="{HOMEIMGALT}" style="width:40px; height:30px" class="img-thumbnail pull-left imghome" />
							<a class="show h4" href="{OTHER.link}" title="{OTHER.title}" {OTHER.target_blank} <!-- BEGIN: tooltip -->data-content="{OTHER.hometext_clean}" data-img="{OTHER.imghome}" data-rel="tooltip" data-placement="{TOOLTIP_POSITION}"<!-- END: tooltip --> >{OTHER.title_02}</a>
						</li>
						<!-- END: loop -->
					</ul>
				</div>
				<!-- END: related -->

			</div>
		</div>
	</div>
	<!-- BEGIN: block_bottomcat -->
	<div class="bottom-cat clear">
		{BLOCK_BOTTOMCAT}
	</div>
	<!-- END: block_bottomcat -->
</div>
<!-- END: listcat -->
<!-- END: main -->