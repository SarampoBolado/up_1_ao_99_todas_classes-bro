
sub configurarBuild {
    my %configsBuild = (
        skillsAprendiz => 'NV_BASIC 9',
        skillsClasse1 => 'MG_LIGHTNINGBOLT 3, MG_SRECOVERY 5, MG_FIREBOLT 7, MG_COLDBOLT 7, MG_FIREBOLT 10, MG_COLDBOLT 10, MG_SRECOVERY 8, MG_SIGHT 1, MG_FROSTDIVER 1, MG_NAPALMBEAT 4, MG_SOULSTRIKE 10, MG_LIGHTNINGBOLT 4, MG_THUNDERSTORM 1',
        skillsClasse2 => '',
        skillsClasse1T => 'MG_LIGHTNINGBOLT 3, MG_SRECOVERY 5, MG_FIREBOLT 7, MG_COLDBOLT 7, MG_FIREBOLT 10, MG_COLDBOLT 10, MG_SRECOVERY 8, MG_SIGHT 1, MG_FROSTDIVER 1, MG_NAPALMBEAT 4, MG_SOULSTRIKE 10, MG_LIGHTNINGBOLT 4, MG_THUNDERSTORM 1',
        skillsClasse2T => 'HW_SOULDRAIN 10, HW_MAGICPOWER 10, WZ_ICEWALL 8, WZ_FROSTNOVA 1, WZ_JUPITEL 5, WZ_STORMGUST 5, WZ_VERMILION 1, WZ_EARTHSPIKE 3, WZ_HEAVENDRIVE 1, WZ_QUAGMIRE 1, WZ_SIGHTRASHER 2, WZ_METEOR 1, WZ_ESTIMATION 1, HW_GANBANTEIN 1',
        skillsClasse3 => '',
        statsPadrao => '50 int, 20 dex, 70 int, 50 dex, 20 vit, 90 int, 65 vit, 99 int, 70 dex',
        statsPadraoTransclasse => '50 int, 20 dex, 70 int, 50 dex, 20 vit, 90 int, 65 vit, 99 int, 70 dex'
    );
    my $eventMacro = $eventMacro::Data::eventMacro;
    $eventMacro->set_full_hash('configsBuild', \%configsBuild);
}


sub extrairMapasDeUp {
    my ($lvl) = @_;
    my $variaveisDeUp;
    
    #########################################################################
    #AQUI É DEFINIDO OS MAPAS QUE CADA CLASSE IRÁ UPAR, DE MODO 
    #QUE SEJA EXTREMAMENTE FÁCIL DE ALTERAR A SEU GOSTO
    ########################################################################

    $variaveisDeUp = 
    [
        {lvlMin => 1 , lvlMax => 11, lockMap => 'pay_fild02',  saveMap => 'alberta'},
        {lvlMin => 12, lvlMax => 25, lockMap => 'pay_fild08',  saveMap => 'payon'},
        {lvlMin => 26, lvlMax => 40, lockMap => 'pay_dun00',   saveMap => 'payon'},
        {lvlMin => 41, lvlMax => 45, lockMap => 'moc_fild03',  saveMap => 'payon'},
        {lvlMin => 46, lvlMax => 60, lockMap => 'cmd_fild01',  saveMap => 'comodo'},
        {lvlMin => 60, lvlMax => 70, lockMap => 'moc_fild17',  saveMap => 'morocc'},
        {lvlMin => 71, lvlMax => 79, lockMap => 'yuno_fild09', saveMap => 'aldebaran'},
        {lvlMin => 80, lvlMax => 98, lockMap => 'ein_fild09',  saveMap => 'einbroch'}
    ];
    
    
    foreach my $configs (@{$variaveisDeUp}) {
        #mensagem para debug
        #warning "lvl min: " . $configs->{lvlMin}.' '. "lvl max: " . $configs->{lvlMax}."\n";
        if ($configs->{lvlMin} <= $lvl && $lvl <= $configs->{lvlMax}) {  #checa em qual "grupo" (de lvlMin e lvlMax) seu nivel se encaixa
            my %hash = (lockMap => $configs->{lockMap}, saveMap => $configs->{saveMap});
            my $eventMacro = $eventMacro::Data::eventMacro;
               $eventMacro->set_full_hash('mapa', \%hash);
        }    
    }
}

