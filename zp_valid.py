import requests

zp_file = open('src/common/config/Zombie_Players.cfg', 'r')

for line in zp_file:
    s = line.strip()
    if s.startswith('S:Spawning_playerNamesToUse'):
        names = s.split('S:Spawning_playerNamesToUse=')[1].split(',')

        for name in names:
            n = name.strip()
            data = requests.get('https://playerdb.co/api/player/minecraft/' + n).json()
            if not data['success']:
                print('Player not found: ' + n)

zp_file.close()
