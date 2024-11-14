function Stop-Computer {
    # Demander � l'utilisateur ce qu'il souhaite faire
    Write-Host "Que souhaitez-vous faire ?"
    Write-Host "A - Arr�ter l'ordinateur"
    Write-Host "P - Retourner au menu pr�c�dent"
    Write-Host "X - Quitter le script"
    Write-Host "Toute autre touche pour annuler"

    $choix = Read-Host "Choix"

    if ($choix -eq 'A' -or $choix -eq 'a') {
        Write-Host "Arr�t de l'ordinateur..."
        Stop-Computer -Force
    }
    elseif ($choix -eq 'P' -or $choix -eq 'p') {
        Write-Host "Retour au menu pr�c�dent."
        Show-MainMenu
    }
    elseif ($choix -eq 'X' -or $choix -eq 'x') {
        Write-Host "Quitter le script."
        Exit
    }
    else {
        Write-Host "Action annul�e."
        Show-MainMenu
    }
}

function Restart-Computer {
    # Demander � l'utilisateur ce qu'il souhaite faire
    Write-Host "Que souhaitez-vous faire ?"
    Write-Host "R - Red�marrer l'ordinateur"
    Write-Host "P - Retourner au menu pr�c�dent"
    Write-Host "X - Quitter le script"
    Write-Host "Toute autre touche pour annuler"

    $choix = Read-Host "Choix"

    if ($choix -eq 'R' -or $choix -eq 'r') {
        Write-Host "Red�marrage de l'ordinateur..."
        Restart-Computer
    }
    elseif ($choix -eq 'P' -or $choix -eq 'p') {
        Write-Host "Retour au menu pr�c�dent."
        Show-MainMenu
    }
    elseif ($choix -eq 'X' -or $choix -eq 'x') {
        Write-Host "Quitter le script."
        Exit
    }
    else {
        Write-Host "Action annul�e."
        Show-MainMenu
    }
}

function Lock-Computer {
    # Demander � l'utilisateur ce qu'il souhaite faire
    Write-Host "Que souhaitez-vous faire ?"
    Write-Host "V - Verrouiller l'ordinateur"
    Write-Host "P - Retourner au menu pr�c�dent"
    Write-Host "X - Quitter le script"
    Write-Host "Toute autre touche pour annuler"

    $choix = Read-Host "Choix"

    if ($choix -eq 'V' -or $choix -eq 'v') {
        Write-Host "Verrouillage de l'ordinateur..."
        rundll32.exe user32.dll,LockWorkStation
    }
    elseif ($choix -eq 'P' -or $choix -eq 'p') {
        Write-Host "Retour au menu pr�c�dent."
        Show-MainMenu
    }
    elseif ($choix -eq 'X' -or $choix -eq 'x') {
        Write-Host "Quitter le script."
        Exit
    }
    else {
        Write-Host "Action annul�e."
        Show-MainMenu
    }
}

function Show-MainMenu {
    Clear-Host
    Write-Host ""
    Write-Host "Votre action sur Ordinateur client concerne :"
    Write-Host "--------> l'arr�t de la machine             ( tapez A )"
    Write-Host "--------> le red�marrage de la machine      ( tapez R )"
    Write-Host "--------> le verrouillage de la machine    ( tapez V )"
    Write-Host "--------> retour au menu pr�c�dent        ( tapez P )"
    Write-Host "--------> quitter                         ( tapez X )"
    Write-Host ""

    $action_machine = Read-Host "S�lectionnez votre choix"

    switch ($action_machine) {
        'a' { Stop-Computer }
        'A' { Stop-Computer }
        'r' { Restart-Computer }
        'R' { Restart-Computer }
        'v' { Lock-Computer }
        'V' { Lock-Computer }
        'p' { Show-MainMenu }
        'P' { Show-MainMenu }
        'x' { Write-Host "Quitter le script." ; Exit }
        'X' { Write-Host "Quitter le script." ; Exit }
        default { 
            Write-Host "Choix invalide. Veuillez r�essayer."
            Show-MainMenu
        }
    }
}

# Lancer le menu principal
Show-MainMenu