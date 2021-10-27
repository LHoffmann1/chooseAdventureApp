import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import StoryStartView from '../views/StoryStartView.vue'
import StayInBedView from '../views/StayInBedView.vue'
import InvestigateView from '../views/InvestigateView.vue'
import CheckBedView from '../views/CheckBedView.vue'
import AttackGoblinView from '../views/AttackGoblinView.vue'
import BargainGoblinView from '../views/BargainGoblinView.vue'
import CauldronView from '../views/CauldronView.vue'
import DistractGoblinView from '../views/DistractGoblinView.vue'
import FollowFigureView from '../views/FollowFigureView.vue'
import GetHelpView from '../views/GetHelpView.vue'
import GetParentsView from '../views/GetParentsView.vue'
import HelpFelixView from '../views/HelpFelixView.vue'
import KnockWitchView from '../views/KnockWitchView.vue'
import OpenDoorView from '../views/OpenDoorView.vue'
import RefuseFelixView from '../views/RefuseFelixView.vue'
import SneakGoblinView from '../views/SneakGoblinView.vue'
import StopSpellView from '../views/StopSpellView.vue'




Vue.use(VueRouter)

const router = new VueRouter({
  mode:'history',
  base: process.env.BASE_URL,
  routes:[
    {
    path: '/',
    name: 'Home',
    component: Home
  },
  {path:'/storyStart',
  name: 'StoryStartView',
  component: StoryStartView
  },
  {path:'/stayInBed',
  name: 'StayInBedView',
  component: StayInBedView
  },
  {path:'/investigate',
  name: 'InvestigateView',
  component: InvestigateView
  },
  {path:'/checkBed',
  name: 'CheckBedView',
  component: CheckBedView
  },
  {path:'/attackGoblin',
  name: 'AttackGoblinView',
  component: AttackGoblinView
  },
  {path:'/bargainGoblin',
  name: 'BargainGoblinView',
  component: BargainGoblinView
  },
  {path:'/cauldron',
  name: 'CauldronView',
  component: CauldronView
  },
  {path:'/distractGoblin',
  name: 'DistractGoblinView',
  component: DistractGoblinView
  },
  {path:'/followFigure',
  name: 'FollowFigureView',
  component: FollowFigureView
  },
  {path:'/getHelp',
  name: 'GetHelpView',
  component: GetHelpView
  },
  {path:'/getParents',
  name: 'GetParentsView',
  component: GetParentsView
  },
  {path:'/helpFelix',
  name: 'HelpFelixView',
  component: HelpFelixView
  },
  {path:'/knockWitch',
  name: 'KnockWitchView',
  component: KnockWitchView
  },
  {path:'/openDoor',
  name: 'OpenDoorView',
  component: OpenDoorView
  },
  {path:'/refuseFelix',
  name: 'RefuseFelixView',
  component: RefuseFelixView
  },
  {path:'/sneakGoblin',
  name: 'SneakGoblinView',
  component: SneakGoblinView
  },
  {path:'/stopSpell',
  name: 'StopSpellView',
  component: StopSpellView
  }
]})


export default router
