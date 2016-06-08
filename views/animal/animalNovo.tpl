<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="comum/head.tpl"}
    </head>
    <body class="flat-blue">    
        {include file="comum/menu.tpl"}
        <div class="row">
            <div class="col-xs-12">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <div class="title">Novo Animal</div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form  class="form-horizontal" 
                               name="frm_animal" 
                               action="/animal/gravar" 
                               method="post"
                               enctype="multipart/form-data"
                               >                        
                            <div class="form-group">
                                <label for="data_registro" class="col-sm-2 control-label">Data Registro</label>
                                <div class="col-sm-4">
                                    <input type="hidden" class="form-control" name="id_animal" id="id_animal" value="{$registro.id_animal|default:''}">
                                    <input type="text" class="col-sm-4" id="data_registro" placeholder="Data Registro" value="{$registro.data_registro|default:''}" name="data_registro">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="data_nascimento" class="col-sm-2 control-label">Data Nascimento</label>
                                <div class="col-sm-4">                                    
                                    <input type="datetime" class="col-sm-4" id="data_nascimento" placeholder="Data Nascimento" name="data_nascimento" value="{$registro.data_nascimento|default:''}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="fazenda" class="col-sm-2 control-label">Fazenda</label>
                                <div class="col-sm-4">
                                    <select id="fazenda" name="fazenda" placeholder="Fazenda" class="col-xs-12">
                                        {html_options options=$options_fazendas|default:'' selected=$registro.id_fazenda}
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="numero_brinco" class="col-sm-2 control-label">Nº Brinco</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="numero_brinco" name="numero_brinco" placeholder="Nº Brinco" value="{$registro.numero_brinco|default:''}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="nome" class="col-sm-2 control-label">Nome</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="nome" name="nome" value="{$registro.nome|default:''}" placeholder="Nome">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sexo" class="col-sm-2 control-label">Sexo</label>
                                <div class="col-sm-4">
                                    <select id="sexo" name="sexo" placeholder="Sexo" class="col-xs-12">
                                        {html_options options=$options_sexo|default:'' selected=$registro.sexo}
                                    </select>
                                </div>
                            </div>                            
                            <div class="form-group">
                                <label for="peso" class="col-sm-2 control-label">Peso</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" name="peso" id="peso" value="{$registro.peso|default:''}" placeholder="peso">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tipo_registro" class="col-sm-2 control-label">Tipo Registro</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="tipo_registro" name="tipo_registro" value="{$registro.tipo_registro|default:''}" placeholder="Tipo Registro">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="numero_brinco_mae" class="col-sm-2 control-label">Nº Brinco Mãe</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="numero_brinco_mae" value="{$registro.numero_brinco_mae|default:''}" name="numero_brinco_mae" placeholder="Nº Brinco Mãe">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="numero_brinco_pai" class="col-sm-2 control-label">Nº Brinco Pai</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" name="numero_brinco_pai" id="numero_brinco_pai" value="{$registro.numero_brinco_pai|default:''}" placeholder="Nº Brinco Pai">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="semen" class="col-sm-2 control-label">Semen</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="semen" name="semen" value="{$registro.semen|default:''}" placeholder="Semen">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="procedencia" class="col-sm-2 control-label">Procedencia</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="procedencia" value="{$registro.procedencia|default:''}" name="procedencia" placeholder="Procedencia">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="caracteristicas" class="col-sm-2 control-label">Caracteristicas</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="caracteristicas" name="caracteristicas" value="{$registro.caracteristicas|default:''}" placeholder="Caracteristicas">
                                </div>
                            </div>                           
                            <div class="form-group">
                                <label for="observacao" class="col-sm-2 control-label">Observação</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="observacao" name="observacao" value="{$registro.obs|default:''}" placeholder="Observação">
                                </div>
                            </div>
                            <div class="form-group">
                                {*                                <label for="area_util" class="col-sm-2 control-label">Área Útil</label>*}
                                <div class="col-sm-4">
                                    <input type="submit" id="salvar" class="btn btn-info" value="SALVAR" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        {include file="comum/footer.tpl"}        
        <link   rel="stylesheet" type="text/css" href="/files/css/datepicker.css">
        <script type="text/javascript" src="/files/js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="/files/js/animal/animal.js"></script>
    </body>
</html>
