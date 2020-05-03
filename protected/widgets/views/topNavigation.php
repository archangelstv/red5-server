<?php
/**
 * TopNavigation by TopMenuWidget.
 *
 * @package humhub.widgets
 * @since 0.5 */
?>
<?php foreach ($this->getItems() as $item) : ?>
    <li class="visible-md visible-lg visible-sm <?php if ($item['isActive']): ?>active<?php endif; ?> <?php
    if (isset($item['id'])) {
        echo $item['id'];
    }
    ?>">
        <a href="<?php echo $item['url']; ?>"  target="<?php echo $item['target']; ?>" >
            <?php echo $item['icon']; ?>
            <?php echo $item['label']; ?>
        </a>
    </li>
<?php endforeach; ?>



<li class="dropdown visible-xs ">
    <a href="#" id="top-dropdown-menu" class="dropdown-toggle" data-toggle="dropdown">
        <!--<i class="fa fa-align-justify"></i><br>
        <?php echo Yii::t('base', 'Menu'); ?>
        <b class="caret"></b>-->
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </a>
    <ul class="dropdown-menu pull-right" style="background-color: gray">

        <?php foreach ($this->getItems() as $item) : ?>
            <li class="<?php if ($item['isActive']): ?>active<?php endif; ?>">
                <a href="<?php echo $item['url']; ?>"  target="<?php echo $item['target']; ?>" >
                    <?php //echo $item['icon'];   ?>
                    <?php echo $item['label']; ?>
                </a>
            </li>
        <?php endforeach; ?>
        
        <?php if(!isset(Yii::app()->user->id))
        { ?>
        <li>
        	 <a href="<?php echo Yii::app()->createUrl('//user/auth/login') ?>" class="">Sign In</a></li>
        	 <li>
             <a href="<?php echo Yii::app()->createUrl('//user/auth/Signup') ?>" class="">Sign up</a>
        </li>
<?php } ?>
    </ul>
</li>
