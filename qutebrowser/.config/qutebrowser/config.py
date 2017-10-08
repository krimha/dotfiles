c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}',
        'r': 'https://reddit.com/r/{}',
        'g': 'https://google.com/search?q={}',
        'so': 'https://stackoverflow.com/search?q={}',
        'w': 'https://en.wikipedia.org/w/index.php?search={}',
        'd': 'http://www.dictionary.com/browse/{}'
        }

config.bind('d', 'scroll-page 0 0.5')
config.bind('u', 'scroll-page 0 -0.5')

config.bind('x', 'tab-close')
config.bind('X', 'tab-close -o')

config.bind('W', 'tab-detach')
config.bind('K', 'tab-next')
config.bind('J', 'tab-prev')

