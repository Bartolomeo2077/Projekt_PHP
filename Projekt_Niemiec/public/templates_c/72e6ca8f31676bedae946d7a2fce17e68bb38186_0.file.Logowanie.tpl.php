<?php
/* Smarty version 4.3.0, created on 2023-09-25 01:35:33
  from 'D:\Studia\Semestr IV\Aplikacje Webowe\htdocs\Projekt_Niemiec\app\views\Logowanie.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.0',
  'unifunc' => 'content_6510c7c5dc0868_49640854',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '72e6ca8f31676bedae946d7a2fce17e68bb38186' => 
    array (
      0 => 'D:\\Studia\\Semestr IV\\Aplikacje Webowe\\htdocs\\Projekt_Niemiec\\app\\views\\Logowanie.tpl',
      1 => 1695597707,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6510c7c5dc0868_49640854 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16067493236510c7c5dbbca9_31449559', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block "content"} */
class Block_16067493236510c7c5dbbca9_31449559 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_16067493236510c7c5dbbca9_31449559',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<!-- Main -->
	<div id="main">
		<!-- Featured Post -->
			<article class="post featured">
				<header id="formularz" class="major">
					<h2><a href="#">Logowanie</a></h2>
				</header>
			</article>

	<div>
		<section>
			<form action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['rel_url'][0], array( array('action'=>"Logowanie"),$_smarty_tpl ) );?>
" method="post">
				<div class="fields">
					<div class="field">
						<label for="nazwa">Nazwa</label>
						<input type="text" name="nazwa" id="name" />
					</div>
					<div class="field">
						<label for="haslo">Hasło</label>
						<input type="password" name="haslo" id="message"></input>
					</div>
				</div>
				<ul class="actions">
					<li><input type="submit" value="Zaloguj" /></li>
				</ul>
			</form>
		</section>
	</div>
<?php
}
}
/* {/block "content"} */
}
