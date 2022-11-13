# Ce code doit être exécuté dans un notebook Jupyter avec Julia installé


using Compose

composition = compose(context(), rectangle(.5, .5, 20px, 20px),
    rectangle(.5, .2, 20px, 20px),
    rectangle(.5, .8, 20px, 20px),
    fill("grey")
)
