<?php
/* @var $this LogicaController */
/* @var $form CActiveForm */
?>

<div id="calculadora-logica" class="col-sm-12 col-sm-offset-0">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'calculadora-form',
        'enableAjaxValidation' => false,
    ));
    ?>

    <!-- http://javascripts.astalaweb.com/Calculadoras/1_Calculadoras.asp -->
    <!-- http://javascripts.astalaweb.com/Calculadoras/Calculadora%20cient%C3%ADfica/Calculadora%20cient%C3%ADfica.htm -->
    <!-- view-source:http://javascripts.astalaweb.com/Calculadoras/Calculadora%20cient%C3%ADfica/Calculadora%20cient%C3%ADfica.htm -->
    <table cellSpacing="3" cellPadding="1" border="0" class="form-group col-sm-6 col-sm-offset-3">
        <caption align="top"><h1><b><?php echo Funcion::calculadora; ?></b></h1></caption>
        <tr>
            <td colspan="4">
                <input type="text" name="txt_formula" id="txt_formula" value="<?php echo $formula; ?>" readonly class="form-control">
            </td>
            <td colspan="1">
                <input type="text" name="txt_valor" id="txt_valor" value="<?php echo $valor; ?>" readonly class="form-control">
            </td>
        </tr>
        <?php echo saltoLinea(); ?>
        <tr>
            <?php echo lbl_valores('p', $p); ?>
            <?php echo lbl_valores('r', $r); ?>
            <?php echo lbl_valores('t', $t); ?>
            <?php echo lbl_valores('v', $v); ?>
            <?php echo lbl_valores('y', $y); ?>
        </tr>
        <tr>
            <?php echo lbl_valores('q', $q); ?>
            <?php echo lbl_valores('s', $s); ?>
            <?php echo lbl_valores('u', $u); ?>
            <?php echo lbl_valores('x', $x); ?>
            <?php echo lbl_valores('z', $z); ?>
        </tr>
        <?php echo saltoLinea(); ?>
        <tr>
            <?php echo btn_simbolos('x', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos('y', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos('z', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos('DEL', 'btn btn-lg btn-warning', 'delFormula()'); ?>
            <?php echo btn_simbolos('AC', 'btn btn-lg btn-danger', 'acFormula()'); ?>
        </tr>
        <tr>
            <?php echo btn_simbolos('t', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos('u', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos('v', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos(Operaciones::$equiv, 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos(Operaciones::$impl, 'btn btn-lg btn-default', 'addFormula(this)'); ?>
        </tr>
        <tr>
            <?php echo btn_simbolos('q', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos('r', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos('s', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos(Operaciones::$and, 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos(Operaciones::$or, 'btn btn-lg btn-default', 'addFormula(this)'); ?>
        </tr>
        <tr>
            <?php echo btn_simbolos('p', 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos(Operaciones::$parenOp, 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos(Operaciones::$parenCl, 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <?php echo btn_simbolos(Operaciones::$not, 'btn btn-lg btn-default', 'addFormula(this)'); ?>
            <td>
                <input type="submit" name="btn[igual]" value="=" class="btn btn-lg btn-success">
            </td>
        </tr>
    </table>

    <?php $this->endWidget(); ?>
</div>

<?php

function lbl_valores($sim, $val) {
    $str = '<td class="form-inline">';
    $str .= '<input type="submit" name="lbl[' . $sim . ']" value="' . $sim . '" class="btn btn-lg btn-default">';
    $str .= '<input type="text" name="txt[' . $sim . ']" value="' . $val . '" readonly class="form-control simbolo">';
    $str .= '</td>';
    return $str;
}

function btn_simbolos($sim, $class, $onclick) {
    $str = '<td>';
    $str .= CHtml::link($sim, '', array('class' => $class, 'onclick' => $onclick));
    $str .= '</td>';
    return $str;
}

function saltoLinea() {
    return '<tr><td colSpan="5"><br></td></tr>';
}
