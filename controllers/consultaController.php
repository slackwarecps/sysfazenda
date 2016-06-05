<?php

class consulta extends controller {

    public function index_action() {   
            
         $this->smarty->display('consulta/consulta.tpl');
    }
    
    public function novo(){
        //buscando fazendas
        $modelFazendas = new fazendaModel();
        $options_fazendas = array('' => 'SELECIONE');
        foreach ($modelFazendas->getFazendas() as $value) {
            $options_fazendas[$value['id_fazenda']] = $value['nome'];
        }
        $this->smarty->assign('options_fazendas', $options_fazendas);
        
        //buscando animais
        $modelAnimais = new animalModel();
        $options_animais = array('' => 'SELECIONE');
        foreach ($modelAnimais->getAnimais() as $value) {
            $options_animais[$value['id_animal']] = $value['nome'];
        }
        $this->smarty->assign('options_animais', $options_animais);
        
        //buscando crias        
        $options_crias = array('' => 'SELECIONE');
        foreach ($modelAnimais->getAnimais() as $value) {
            $options_crias[$value['id_animal']] = $value['nome'];
        }
        $this->smarty->assign('options_crias', $options_crias);
        
        
        $this->smarty->display('consulta/consultaNovo.tpl');
    }
    
    public function gravar(){                
        $_POST['data_registro'] = implode("-",array_reverse(explode("/",$_POST['data_registro'])));
        $data['data_registro']  = isset($_POST['data_registro']) ? $_POST['data_registro'] : '';
        $data['id_animal']      = isset($_POST['animal']) ? $_POST['animal'] : '';
        $data['idade']          = isset($_POST['idade']) ? $_POST['idade'] : 0;
        $data['tipo_registro']  = isset($_POST['tipo_registro']) ? $_POST['tipo_registro'] : 0;
        $data['id_fazenda']     = isset($_POST['fazenda']) ? $_POST['fazenda'] : '';
        $data['peso_atual']     = isset($_POST['peso_atual']) ? $_POST['peso_atual'] : 0;
        $data['cria']           = isset($_POST['cria']) ? $_POST['cria'] : 0;
        
        $modelConsulta = new consultaModel();
        $modelConsulta->setConsulta($data);
        
        header('Location: /consulta');
    }
    
 
}