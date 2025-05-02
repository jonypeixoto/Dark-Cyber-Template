/*
 * In a land shrouded in mystery ...
 */

interface DarkCyberProps {
  name: string;
  constructionYear: number;
  destructionYear: number;
  features: string[];
}

class DarkCyber {
  name: string;
  constructionYear: number;
  destructionYear: number;
  features: string[];

  constructor(props: DarkCyberProps) {
    this.name = props.name;
    this.constructionYear = props.constructionYear;
    this.destructionYear = props.destructionYear;
    this.features = props.features;
  }

  get duration(): number {
    return this.calcDuration();
  }

  calcDuration(): number {
    return this.destructionYear - this.constructionYear;
  }
}

// ...there stood a Dark Cyber

const MoonshadowFortress = new DarkCyber({
  name: "Moonshadow Fortress",
  constructionYear: 980,
  destructionYear: 1503,
  features: ["Eerie Glow", "High Battlements"],
});

console.log(`The duration of ${MoonshadowFortress.name} was ${MoonshadowFortress.duration} years.`);
