<?php $this->load->view('admin/inc/header.php'); ?>
    <div class="row">
        <div class="col-lg-12">
            <div class="hpanel">
            	<div class="panel-body">
	                <form method="post" action="<?=current_url()?>">
	                	<div class="form-group has-success">
                            <label class="help-block">ფერი</label>
                            <div>
                                <input required="" name="color" class="form-control jscolor" autocomplete="off" data-validation="required">
                            </div>
                        </div>
		                <div>
				            <ul class="nav nav-tabs">
				            	<?php $i = 1; foreach($langs as $lang): ?>
				                <li <?php if($i == 1) { echo 'class="active"'; } ?> >
				                	<a data-toggle="tab" href="#tab-<?=$i?>" aria-expanded="true"><?=$lang['title']?></a>
				                </li>
				                <?php $i++; endforeach; ?>
				            </ul>
				            <div class="tab-content">
				            	<?php $i = 1; foreach($langs as $lang): ?>
				                <div id="tab-<?=$i?>" class="tab-pane fade <?php if($i == 1) { echo 'in active'; } ?>">
				                    <div class="panel-body">
				                        <div class="form-group">
						                	<label class="help-block">სათაური (მაქს. 255 სიმბოლო)</label>
						                    <div>
						                    	<input type="text" name="title_<?=$lang['code']?>" class="form-control" maxlength="255" <?=($i == 1) ? 'required' : ''; ?>>
						                    </div>
						                </div>
						                <div class="hr-line-dashed"></div>
						                <div class="form-group">
						                	<label class="help-block">მოკლე აღწერა (მაქს. 255 სიმბოლო)</label>
						                    <div>
						                    	<textarea class="form-control" name="descr_<?=$lang['code']?>" maxlength="255"></textarea>
						                    </div>
						                </div>
						                <div class="hr-line-dashed"></div>
						                <div class="form-group">
						                	<label class="help-block">აქტიური</label>
						                    <div>
						                    	<div class="radio radio-info radio-inline">
				                                    <input type="radio" id="radioY_<?=$lang['code']?>" name="active_<?=$lang['code']?>" value="1">
				                                    <label for="radioY_<?=$lang['code']?>">დიახ</label>
				                                </div>
				                                <div class="radio radio-info radio-inline">
				                                    <input type="radio" id="radioN_<?=$lang['code']?>" name="active_<?=$lang['code']?>" value="0" checked>
				                                    <label for="radioN_<?=$lang['code']?>">არა</label>
				                                </div>
						                    </div>
						                </div>
				                    </div>
				                </div>
				                <?php $i++; endforeach; ?>
				            </div>
				        </div>
		                <div class="hr-line-dashed"></div>
		                <button class="btn btn-primary" type="submit">დამატება</button>
		            </form>
		        </div>
            </div>
        </div>
    </div>
<?php $this->load->view('admin/inc/footer.php'); ?>