



while ($true) {
    # Demande le nom d'utilisateur
    $username = Read-Host "Entrez le nom d'utilisateur � v�rifier (ou tapez 'exit' pour quitter)"

    # Permet � l'utilisateur de quitter
    if ($username -eq "exit") {
        Write-Host "Sortie du programme."
        exit
    }

    # V�rifie si l'utilisateur existe
    if (Get-LocalUser -Name $username -ErrorAction SilentlyContinue) {
        Write-Host "L'utilisateur $username existe."

        # Demande si l'utilisateur souhaite changer le mot de passe
        $choix = Read-Host "Voulez-vous changer le mot de passe de $username ? (o/n)"

        if ($choix -eq "o") {
            # Changement du mot de passe
            $newPassword = Read-Host "Entrez le nouveau mot de passe" -AsSecureString
            Set-LocalUser -Name $username -Password $newPassword
            Write-Host "Mot de passe modifi� avec succ�s."
        } else {
            Write-Host "Aucune modification effectu�e."
        }
        break # Sort de la boucle apr�s avoir trait� l'utilisateur
    } else {
        Write-Host "L'utilisateur $username n'existe pas. Veuillez r�essayer."
    }
}









































