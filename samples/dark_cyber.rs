// In a land shrouded in mystery ....

#[derive(Debug)]
pub struct DarkCyber {
    name: String,
    construction_year: u16,
    destruction_year: u16,
    features: Vec<String>,
}

impl DarkCyber {
    pub fn new(
        name: String,
        construction_year: u16,
        destruction_year: u16,
        features: Vec<String>,
    ) -> Self {
        DarkCyber {
            name,
            construction_year,
            destruction_year,
            features,
        }
    }

    pub fn duration(&self) -> u16 {
        self.calc_duration()
    }

    fn calc_duration(&self) -> u16 {
        self.destruction_year - self.construction_year
    }
}

// ...there stood a Dark Cyber

fn main() {
    let moonshadow_fortress = DarkCyber::new(
        "Moonshadow Fortress".to_string(),
        980,
        1503,
        vec!["Eerie Glow".to_string(), "High Battlements".to_string()],
    );

    println!(
        "The duration of {} was {} years.",
        moonshadow_fortress.name,
        moonshadow_fortress.duration()
    );
}
