package pl.coderslab.charity.donation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.category.Category;
import pl.coderslab.charity.category.CategoryRepository;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionRepository;

import java.util.List;

@Controller
public class DonationController {

    DonationRepository donationRepository;
    InstitutionRepository institutionRepository;
    CategoryRepository categoryRepository;

    public DonationController(DonationRepository donationRepository, InstitutionRepository institutionRepository, CategoryRepository categoryRepository) {
        this.donationRepository = donationRepository;
        this.institutionRepository = institutionRepository;
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/donation")
    public String donationAction(Model model) {
        model.addAttribute("donation", new Donation());
        return "form";
    }

    @PostMapping("/donation")
    public String donationAction(@ModelAttribute Donation donation) {
        donationRepository.save(donation);
        return "form-confirmation";
    }

    @ModelAttribute("institutions")
    public List<Institution> getInstitutions() {
        return institutionRepository.findAll();
    }

    @ModelAttribute("categories")
    public List<Category> getCategories() {
        return categoryRepository.findAll();
    }

}
