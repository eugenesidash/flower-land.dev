<div id="banner<?php echo $module; ?>" class="banner">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div class="span3 <?php echo $banner['title']; ?>"><a href="<?php echo $banner['link']; ?>"><div class="s-desc"><?php echo $banner['description']; ?></div><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /><span class="line-banner"></span></a></div>
  <?php } else { ?>
  <div class="span3 <?php echo $banner['title']; ?>"><div class="s-desc"><?php echo $banner['description']; ?></div><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
  <?php } ?>
  <?php } ?>
</div>
