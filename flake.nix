{
  "description" = "flake templates";
  "inputs" = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  "outputs" = { nixpkgs, self }: {
    templates = {
      basic = {
        path = ./basic;
        description = "A basic flake which can be used by any platform";
      };
    };

    defaultTemplate = self.templates.basic;


    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
  };
}
