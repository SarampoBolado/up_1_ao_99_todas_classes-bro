sub inicializarParametrosClasses {
    my %parametrosClasses = (
        idC1 => 4,
        idC2 => 8,
        idC2Alt => $INDEFINIDO,
        idC1T => 4005,
        idC2T => 4009,
        idC2TAlt => $INDEFINIDO,
        idC3 => 4057,
        idBC1 => 4027,
        idBC2 => 4031,
        idBC2Alt => $INDEFINIDO
    );
    my $eventMacro = $eventMacro::Data::eventMacro;
    $eventMacro->set_full_hash('parametrosClasses', \%parametrosClasses);
}