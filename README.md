# ⚙️ TSSR-P2 – Projet Scripting Réseau Automatisé

Projet pédagogique réalisé dans le cadre de la formation **TSSR (Technicien Supérieur Systèmes et Réseaux)** à la **Wild Code School**.

---

## 🎯 Objectif pédagogique

Développer un **script automatisé** capable d'effectuer des actions sur **plusieurs machines distantes** connectées sur un **même réseau local**.

---

## 📜 Description du projet

Le projet consiste à créer un **script centralisé** (en PowerShell ou Bash) qui :
- Identifie les machines disponibles sur le réseau
- Se connecte à distance (via SSH/RDP)
- Lance des commandes ou tâches automatisées (ex. : nettoyage, inventaire, copie de fichiers)

---

## 🧰 Environnement & outils

| Domaine     | Technologies / outils        |
|-------------|------------------------------|
| Scripting   | PowerShell, Bash             |
| Réseau LAN  | IP fixe, ping, arp-scan      |
| Communication | RDP, PSRemoting, SMB        |
| OS ciblés   | Windows 10 Pro (clients)     |
| Automatisation | Planification de tâches    |

---

## 👤 Mon rôle dans le projet (GRD78)

- Développement du script PowerShell principal
- Test réseau entre machines (ping, connectivité)
- Configuration des machines cibles pour l’exécution distante
- Aide à la rédaction de la documentation projet
- Présentation de la solution finale en démonstration

---

## 🏫 Contexte

Projet réalisé en groupe pour simuler un cas réel de **gestion informatique à distance**, avec un focus sur :
- la communication inter-machine
- la sécurité des scripts
- la simplicité d’exécution

---

## ✅ Statut : `Fonctionnel – Présenté en groupe`

---

## 📁 Organisation

```
📂 TSSR-P2-Scripting/
├── scripts/
│   └── multi-task.ps1
├── docs/
│   └── rapport-technique.pdf
└── README.md
```

---

> Projet collaboratif – Wild Code School – Promo TSSR 2024  
> Par [GRD78](https://github.com/GRD78)