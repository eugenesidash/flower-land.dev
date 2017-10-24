<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
</section>
<footer>
<div class="container">
	<div class="footer-block">
		<div class="row">
	
			<?php if ($informations) { ?>
			<div class="span2">
				<h3><?php echo $text_information; ?></h3>
				<ul>
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
				</ul>
			</div>
			<?php } ?>
			<div class="span2">
				<h3><?php echo $text_service; ?></h3>
				<ul>
				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			</div>
			<div class="span2">
				<h3><?php echo $text_extra; ?></h3>
				<ul>
				<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
				<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
				<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
				<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
				</ul>
			</div>
			<div class="span2">
				<h3><?php echo $text_account; ?></h3>
				<ul>
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			</div>
			<div class="span2">
				<h3><?php echo $text_follow; ?></h3>
				<ul>
					<li><a href="http://facebook.com"><?php echo $text_fb; ?></a></li>
					<li><a href="http://twitter.com"><?php echo $text_twi; ?></a></li>
					<li><a href="#"><?php echo $text_rss; ?></a></li>
					<li><a href="http://youtube.com"><?php echo $text_yt; ?></a></li>
				</ul>
			</div>
			<div class="span2 footer-phone">
				<h3><?php echo $text_support; ?></h3>
				<div class="foot-phone">					
					<div class="extra-wrap">
						<div><?php echo $telephone; ?></div>
						<div><?php echo $fax; ?></div>
					</div>
				</div>
			</div>
	</div></div></div>
<div class="container">
	<div class="row">
	<div class="span12">
		<div id="powered">
			<div>
			<span class="pow">
			<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
			</span>
			<ul class="social">						
				<li><a href="http://facebook.com" class="tooltip-2" title="<?php echo $text_fb; ?>"><i class=" icon-facebook"></i></a></li>
				<li><a href="http://twitter.com" class="tooltip-2" title="<?php echo $text_twi; ?>"><i class=" icon-twitter"></i></a></li>
				<li><a href="#" class="tooltip-2" title="<?php echo $text_rss; ?>"><i class=" icon-rss"></i></a></li>
				<li><a href="http://youtube.com" class="tooltip-2" title="<?php echo $text_yt; ?>"><i class=" icon-youtube"></i></a></li>
				<li><a href="http://accounts.google.com" class="tooltip-2" title="<?php echo $text_google; ?>"><i class="icon-google-plus"></i></a></li>
			</ul>
				
			</div>
			<p id="back-top"> <a href="#top"><span></span></a> </p>
		</div>	
	</div>
	</div></div>
</footer>
<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>
</div>
</div>
</div>
</body></html>