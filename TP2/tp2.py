# Jeu de production
prod_strategies_J1 = [[-3, 2], [0, 0]]
prod_strategies_J2 = [[-2, 3], [4, 4]]

# Le Dilemme du prisonnier
prisoner_strategies_J1 = [[-5, 0], [-20, -1]]
prisoner_strategies_J2 = [[-5, -20], [0, -1]]

# Jeu haut bas
haut_bas_strategies_J1 = [[2, 3], [-6, -1]]
haut_bas_strategies_J2 = [[1, -2], [2, 4]]


def max_ligne(matrice):
    max_value = matrice[0]
    indice_max = 0
    for i in range(len(matrice)):
        if matrice[i] >= max_value:
            max_value = matrice[i]
            indice_max = i
    return max_value, indice_max

def max_colonne(matrice, col):
    indice_max = 0
    for i in range(len(matrice)):
        if matrice[i][col] >= matrice[indice_max][col]:
            indice_max = i
    return matrice[indice_max][col], indice_max

def equilibre_nash(s1, s2):
    for i in range(len(s1)):
        val, j = max_ligne(s2[i])
        for j in range(len(s2)):
            v, i_ = max_colonne(s1, j)
            if i_ == i:
                return i_, j
    return None, None

# Résultats
i, j = equilibre_nash(prod_strategies_J1, prod_strategies_J2)
print("L'équilibre de Nash pour le jeu de production est : ", [prod_strategies_J1[i][j], prod_strategies_J2[i][j]])

i, j = equilibre_nash(prisoner_strategies_J1, prisoner_strategies_J2)
print("L'équilibre de Nash pour le dilemme du prisonnier est : ", [prisoner_strategies_J1[i][j], prisoner_strategies_J2[i][j]])

i, j = equilibre_nash(haut_bas_strategies_J1, haut_bas_strategies_J2)
print("L'équilibre de Nash pour le jeu haut-bas est : ", [haut_bas_strategies_J1[i][j], haut_bas_strategies_J2[i][j]])
