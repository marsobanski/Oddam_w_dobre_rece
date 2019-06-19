package pl.coderslab.charity.donation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface DonationRepository extends JpaRepository<Donation,Long> {

    @Query(value = "select sum(quantity) from donation", nativeQuery = true)
    Long getSumOfAllBags();


}
