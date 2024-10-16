<?php $this->load->view('admin/inc/header.php'); ?>
    <div class="row">
        <div class="col-lg-12">
            <div class="hpanel">
            	<div class="panel-body">
	                <form method="post" action="<?=current_url()?>">
		                <div class="form-group">
		                	<label class="help-block">კატეგორია</label>
		                    <div>
		                    	<select class="form-control m-b js-select" name="category[]" required multiple>
					                <?php foreach($cats as $cat): ?>
					                <option value="<?=$cat['id']?>"><?=$cat['title_ge']?></option>
					            	<?php endforeach; ?>
					            </select>
		                    </div>
		                </div>
	                	<div class="hr-line-dashed"></div>
	                	<div class="form-group">
		                	<label class="help-block">ლექტორი</label>
		                    <div>
		                    	<select class="form-control m-b js-select" name="lector[]" multiple>
					                <?php foreach($lectors as $lector): ?>
					                <option value="<?=$lector['id']?>"><?=$lector['title_ge']?> <?=$lector['fname_ge']?></option>
					            	<?php endforeach; ?>
					            </select>
		                    </div>
		                </div>
	                	<div class="hr-line-dashed"></div>
	                	<div class="form-group">
		                	<label class="help-block">სურათი (290x295)</label>
		                    <div>
		                    	<div class="form-group">
			                    	<div class="input-group">
			                        	<input type="text" name="image" class="form-control" id="image">
		                                <span class="input-group-addon">
		                                    <button type="button" onclick="openFileManager('image');"><span class="fa fa-upload"></span></button>
		                                </span>
			                    	</div>
			                    </div>
		                    </div>
		                </div>
		                <div class="hr-line-dashed"></div>
		                <div class="form-group">
		                	<label class="help-block">სურათების ალბომი (820x400)</label>
		                    <div>
		                    	<div class="form-group">
			                    	<div class="input-group">
			                        	<input type="hidden" name="image_paths" class="form-control" id="paths">
		                                <button class="btn btn-success " type="button" onclick="openMultiple('paths');"><i class="fa fa-upload"></i> <span class="bold">არჩევა</span></button>
			                    	</div>
			                    </div>
			                    <div class="images-box lightBoxGallery" id="albumImages"></div>
		                    </div>
		                </div>
		                <div class="hr-line-dashed"></div>
		                <div class="form-group">
		                	<label class="help-block">თარიღი</label>
		                    <div>
		                    	<input type="text" name="date" autocomplete="off" class="form-control" id="datetimepicker">
		                    </div>
		                </div>
		                <div class="hr-line-dashed"></div>
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
						                <div class="form-group">
						                	<label class="help-block">სრული აღწერა</label>
						                    <div>
						                    	<textarea class="editor" id="editor_<?=$lang['code']?>" name="text_<?=$lang['code']?>"></textarea>
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
		                <div class="form-group">
		                	<label class="help-block">გაიგზავნოს ბროუზერში შეტყობინება?</label>
		                    <div>
		                    	<div class="radio radio-info radio-inline">
                                    <input type="radio" id="notificationY" name="notification" value="1" checked>
                                    <label for="notificationY">დიახ</label>
                                </div>
                                <div class="radio radio-info radio-inline">
                                    <input type="radio" id="notificationN" name="notification" value="0">
                                    <label for="notificationN">არა</label>
                                </div>
		                    </div>
		                </div>
		                <div class="hr-line-dashed"></div>
		                <div class="form-group">
		                	<label class="help-block">გაეგზავნოს მეილი გამომწერებს?</label>
		                    <div>
		                    	<div class="radio radio-info radio-inline">
                                    <input type="radio" id="send_newsletterY" name="send_newsletter" value="1">
                                    <label for="send_newsletterY">დიახ</label>
                                </div>
                                <div class="radio radio-info radio-inline">
                                    <input type="radio" id="send_newsletterN" name="send_newsletter" value="0" checked>
                                    <label for="send_newsletterN">არა</label>
                                </div>
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