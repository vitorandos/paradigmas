from metroDFS import *
from teste import *

line1 = ['La Défense - Grande Arche', 'Esplanade de La Défense', 'La Seine',
    'Pont de Neuilly', 'Les Sablons', 'Porte Maillot', 'Argentine',
    'Charles de Gaulles Étoile', 'George V', 'Franklin D. Roosevelt',
    'Champs Élysées Clemenceau', 'Concorde', 'Tuileries', 'Palais Royal Musée du Louvre',
    'Louvre Rivoli', 'Châtelet', 'Hôtel de Ville', 'St Paul', 'Bastille', 'Gare de Lyon',
    'Reuilly-Diderot', 'Nation', 'Porte de Vincennes', 'St-Mandé', 'Château de Vincennes']

line2 = ['Nation', 'Avron', 'Alexandre Dumas', 'Philippe Auguste', 'Père Lachaise',
    'Ménilmontant', 'Couronnes', 'Belleville', 'Colonel Fabien', 'Jaurès', 'Stalingrad',
    'La Chapelle', 'Barbès Rochechouart', 'Anvers', 'Pigalle', 'Blanche',
    'Place de Clichy', 'Rome', 'Villiers', 'Monceau', 'Courcelles',
    'Ternes', 'Charles de Gaulles Étoile', 'Victor Hugo', 'Porte Dauphine']

line3 = ['Pont de Levallois Bécon', 'Anatole France', 'Louise Michel',
    'Porte de Champerret', 'Pereire', 'Wagram', 'Malesherbes', 'Villiers',
    'Europe', 'Saint-Lazare', 'Havre Caumartin', 'Opéra', 'Quatre Septembre',
    'Bourse', 'Sentier', 'Réaumur Sébastopol', 'Arts et Métiers', 'Temple',
    'République', 'Oberkampf', 'Parmentier', 'Rue Saint-Maur', 'Père Lachaise',
    'Gambetta', 'Porte de Bagnolet', 'Gallieni']

line4 = ['Mairie de Montrouge', 'Porte d\'Orléans', 'Alésia', 'Mouton Duvernet',
    'Denfert Rochereau', 'Raspail', 'Vavin', 'Montparnasse Bienvenue', 'St-Placide',
    'Saint-Sulpice', 'Saint Germain des-Près', 'Odeón', 'St-Michel', 'Cité',
    'Châtelet', 'Les Halles', 'Étiennes Marcel', 'Réaumur Sébastopol',
    'Strasbourg Saint-Denis', 'Château d\'Eau', 'Gare de l\'Est', 'Gare du Nord',
    'Barbès Rochechouart', 'Château Rouge', 'Marcadet Poissoniers', 'Simplon',
    'Porte de Clignancourt']

line5 = ['Place \'Italie', 'Campo Formio', 'Saint Marcel', 'Gare d\'Austerlitz',
    'Quai de la Rapée', 'Bastille', 'Bréguet Sabin', 'Richard Lenoir', 'Oberkampf',
    'République', 'Jacques Bonsergent', 'Gare de l\'Est', 'Gare du Nord', 'Stalingrad',
    'Jaurès', 'Laumière', 'Ourcq', 'Porte de Pantin', 'Hoche', 'Église de Pantin',
    'Bobigny Pantin Raymond Queneau', 'Bobigny Pablo Picasso']

line6 = ['Nation', 'Picpus', 'Bel-Air', 'Dausmesnil', 'Dugommier',
    'Bercy', 'Quai de la Gare', 'Chevaleret', 'Nationale', 'Place \'Italie',
    'Corvisart', 'Glacière', 'Saint-Jacques', 'Denfert Rochereau', 'Raspail',
    'Edgar Quinet', 'Montparnasse Bienvenue', 'Falguière', 'Pasteur', 'Sèvres Lecourbe',
    'Cambronne', 'La Motte Picquet Grenelle', 'Dupleix', 'Bir-Hakeim', 'Passy',
    'Trocadéro', 'Boissière', 'Kléber', 'Charles de Gaulle Étoile']

line7 = ['La Corneuve 8 Mai 1945', 'Fort d\'Aubervilliers', 'Aubervilliers Pantin Quatre Chemins',
    'Porte de la Villete', 'Corentin Cariou', 'Crimée', 'Riquet', 'Stalingrad',
    'Louis Blanc', 'Château Landon', 'Gare de l\'Est', 'Poissoinière', 'Cadet',
    'Le Peletier', 'Chaussée d\'Antin La Fayette', 'Opéra', 'Pyramides', 'Palais Royal Musée du Louvre',
    'Pont Neuf', 'Châtelet', 'Pont Marie', 'Sully Morland', 'Jussieu', 'Place Monge',
    'Censier Daubenton', 'Les Gobelins', 'Place d\'Italie', 'Tolbiac', 'Maison Blanche']

line7_1 = ['Maison Blanche', 'Porte d\'Italie', 'Porte de Choisy', 'Porte d\'Ivry',
    'Pierre et Marie Curie', 'Mairie d\'Ivry']

line7_2 = ['Maison Blanche', 'Le Kremlin Bicêtre', 'Villejuif Léo Lagrange',
    'Villejuif Paul Vaillant-Couturier', 'Villejuif-Louis Aragon']

line8 = ['Balard', 'Lourmel', 'Boucicaut', 'Félix Faure', 'Commerce',
    'La Motte Picquet Grenelle', 'École Militaire', 'La Tour Maubourg', 'Invalides',
    'Concorde', 'Madeleine', 'Opéra', 'Richelieu Drouot', 'Grand Boulevards',
    'Bonne Nouvelle', 'Strasbourg Saint-Dennis', 'République', 'Filles du Calvaire',
    'St-Sébastien Froissart', 'Chemin Vert', 'Bastille', 'Ledru-Rollin',
    'Faidherbe Chaligny', 'Reuilly Diderot', 'Montgallet', 'Daumesnil', 'Michel Bizot',
    'Porte Dorée', 'Porte de Charenton', 'Liberté', 'Charenton-Écoles',
    'Ëcole Veterinaire de Maisons-Alfort', 'Maisons-Alfort-Stade', 'Maisons-Alfort Les Juilliottes',
    'Créteil-L\'Échat', 'Créteil-Université', 'Créteil-Préfecture', 'Créteil Pointe du Lac']

line9 = ['Pont de Sèvres', 'Billancourt', 'Marcel Sembat', 'Porte de St-Cloud',
    'Exelmans', 'Michel Ange Molitor', 'Michel Ange Auteuil', 'Jasmin', 'Ranelagh',
    'La Muette', 'Rue de la Pompe', 'Trocadéro', 'Ièna', 'Alma Morceau', 'Franklin D. Roosevelt',
    'Saint-Philippe du Roule', 'Miromesnil', 'Saint-Augustin', 'Havre Caumartin',
    'Chaussée d\'Antin La Fayette', 'Richelieu Drouot', 'Grands Boulevards',
    'Bonne Nouvelle', 'Strasbourg Saint-Denis', 'République', 'Oberkampf',
    'Saint-Ambroise', 'Voltaire', 'Charonne', 'Rue des Boulets', 'Nation',
    'Buzenval', 'Maraîchers', 'Porte de Montreuil', 'Robespierre', 'Croix de Chavaux',
    'Mairie de Montreuil']

line10_1 = ['Boulogne Pont de St-Cloud', 'Boulogne Jean Jaurès']

line10_circle_up = ['Boulogne Jean Jaurès', 'Porte d\'Auteil', 'Michel Ange Auteil',
    'Église d\'Auteil', 'Javel André Citroën']

line10_circle_down = ['Boulogne Jean Jaurès', 'Michel Ange Molitor', 'Chardon Lagache',
    'Mirabeau', 'Javel André Citroën']

line10_2 = ['Javel André Citroën', 'Charles Michels', 'Avenue Émile Zola', 'La Motte Picquet Grenelle',
    'Ségur', 'Duroc', 'Vaneau', 'Sévres Babylone', 'Mabillon', 'Odéon', 'Cluny La Sorbonne',
    'Maubert Mutualitñe', 'Cardinal Lemoine', 'Jussieu', 'Gare d\'Austerlitz']

line11 = ['Mairie des Lilas', 'Porte des Lilas', 'Télégraphe', 'Place des Fêtes',
    'Jourdain', 'Pyrénées', 'Belleville', 'Goncourt', 'République', 'Arts et Métiers',
    'Rambuteau', 'Hôtel de Ville', 'Châtelet']

line12 = ['Mairie d\'Issy', 'Corentin Celton', 'Porte de Versailles', 'Convention',
    'Vaugirard', 'Volontaires', 'Pasteur', 'Falguière', 'Montparnasse Bienvenue',
    'Notre-Dame des-Champs', 'Rennes', 'Sèvres Babylone', 'Rue du Bac',
    'Solférino', 'Assemblée Nationale', 'Concorde', 'Madeleine', 'Saint-Lazare',
    'Trinité d\'Estienne d\'Orves', 'Notre-Dame de-Lorette', 'Saint Georges',
    'Pigalle', 'Abbesses', 'Lamarck Caulaincourt', 'Jules Joffrin', 'Marcadet Poissoiniers',
    'Marx Dormoy', 'Porte de la Chapelle', 'Aubervilliers Front Populaire']

line13_1 = ['Saint-Denis - Université', 'Basilique de St-Denis', 'Saint-Denis Porte de Paris',
    'Carrefour Pleyel', 'Mairie de Saint-Ouen', 'Garibaldi', 'Porte de Saint-Ouen',
    'Guy Môquet', 'La Fourche']

line13_2 = ['Asnières Gennevilliers Les Courtilles', 'Les Agnettes', 'Gabriel Péri',
    'Mairie de Clichy', 'Porte de Clichy', 'Brochant', 'La Fourche']

line13_3 = ['La Fourche', 'Place de Clichy', 'Liège', 'Saint-Lazare', 'Miromesnil',
    'Champs Élysées Clemenceau', 'Invalides', 'Varenne', 'Saint François Xavier',
    'Duroc', 'Montparnasse Bienvenue', 'Gaîté', 'Pernety', 'Plaisance', 'Porte de Vanves',
    'Malakoff Rue Étienne Dolet', 'Châtillon-Montrouge']

line14 = ['Olympiades', 'Bibliothèque François Mitterrand', 'Cour St-Émilion',
    'Bercy', 'Gare d\'Austerlitz', 'Châtelet', 'Pyramides', 'Madeleine', 'Saint-Lazare']


all_lines = [line1, line2, line3, line4, line5, line6, line7, line7_1, line7_2, line8, line9, line10_1,
    line10_circle_up, line10_circle_down, line10_2, line11, line12, line13_1, line13_2, line13_3,
    line14]

dict = {}

graph = Graph(305)

def get_all_stations(all_lines):
    all_stations = []
    for line in all_lines:
        for station in line:
            already_in = False
            for station_in in all_stations:
                if station == station_in:
                    already_in = True
                    continue
            if not already_in:
                all_stations.append(station)
    return all_stations

all_stations = get_all_stations(all_lines)

def get_stations(line, index):
    if index > 0 and  index < (len(line) - 1):
        previous_station = line[index - 1]
        next_station = line[index + 1]
        return [previous_station, next_station]
    elif index == 0:
        next_station = line[index + 1]
        return [next_station]
    else:
        previous_station = line[index - 1]
        return [previous_station]

def remove_duplicates(neighbors, stations_to_append):
    for neighbor in neighbors:
        for station in stations_to_append:
            if neighbor == station:
                stations_to_append.remove(station)

def add_edges(graph, start, neighboring_stations):
    for station in neighboring_stations:
        graph.addEdge(start, station)


for line in all_lines:
    for index in range(len(line)):
        station = line[index]
        if station not in dict:
            neighboring_stations = get_stations(line, index)
            dict[station] = neighboring_stations
            add_edges(graph, station, neighboring_stations)
        else:
            neighboring_stations = get_stations(line, index)
            remove_duplicates(dict[station], neighboring_stations)
            dict[station] = dict[station] + neighboring_stations
            add_edges(graph, station, neighboring_stations)

seen = {}
dupes = []

for x in all_stations:
    if x not in seen:
        seen[x] = 1
    else:
        if seen[x] == 1:
            dupes.append(x)
        seen[x] += 1

print(dupes)


def find_path(graph, start, end, path=[]):
    path = path + [start]
    if start == end:
        return path
    if not start in graph:
        return None
    for node in graph[start]:
        print(node)
        if node not in path:
            newpath = find_path(graph, node, end, path)
            if newpath: return newpath
    return None


def trouver_chemin(graph, vertex, destination, all_stations, path = []):
    all_stations.remove(vertex)
    path = path + [vertex]
    if vertex == destination:
        return path
    else:
        for station in graph[vertex]:
            if station in all_stations:
                path_definitive = trouver_chemin(graph, station, destination, all_stations, path)
                if path_definitive is not None:
                    return path_definitive

def trouver_chemin_faster(graph, vertex, destination, all_stations, copy_all_stations, path = []):
    if vertex in all_stations:
        all_stations.remove(vertex)
    copy_all_stations.remove(vertex)
    path = path + [vertex]
    if vertex == destination:
        return path
    else:
        for station in graph[vertex]:
            if station in copy_all_stations:
                path_definitive = trouver_chemin_faster(graph, station, destination, all_stations, copy_all_stations, path)
                if path_definitive is not None:
                    return path_definitive

def trouver_chemin2(graph, vertex, destination, all_stations, path = []):
    stack = []
    stack.append(vertex)
    while len(stack) > 0:
        vertex = stack.pop()
        if vertex in all_stations:
            all_stations.remove(vertex)
            path = path + [vertex]
            if vertex == destination:
                return path
            else:
                for station in graph[vertex]:
                    stack.append(station)
    return None

def get_reachability(graph, all_stations):
    for station in all_stations:
        copy_all_stations = all_stations.copy()
        copy_all_stations.remove(station)
        for destination in copy_all_stations:
            copy_2 = all_stations.copy()
            path = trouver_chemin_faster(graph, station, destination, copy_all_stations, copy_2)
            if path is not None:
                #print("Vous pouvez aller de la station " + station + " vers la station " + destination + ".")
                pass
            else:
                #print("Vous ne pouvez pas aller de la station " + station + " vers la station " + destination + ".")
                return None
    print("Vous pouvez prendre le métro de n'importe quelle station vers toutes les autres stations du réseau.")



get_reachability(dict, all_stations)






'''
def get_all_reaches(graph, all_stations):
    for station in all_stations:
        copy_all_stations = all_stations
        copy_all_stations.remove(station)
        for destination in copy_all_stations:
            is_reachable = graph.isReachable(station, destination)
            if is_reachable:
                print("Vous pouvez aller de la station " + station + " vers la station " + destination + ".")
            else:
                print("Vous ne pouvez pas aller de la station " + station + " vers la station " + destination + ".")
                return None
    print("Vous pouvez prendre le métro de n'importe quelle station vers toutes les autres stations du réseau.")'''

#get_reachability(dict, all_stations)
#find_path(dict, 'La Défense - Grande Arche', 'Victor Hugo')
#find_path(dict, 'Charles de Gaulle Étoile', 'Victor Hugo')
