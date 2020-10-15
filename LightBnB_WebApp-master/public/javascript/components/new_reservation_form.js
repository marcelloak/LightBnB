$(() => {

  

  const $newReservationForm = $(`
  <form action="/api/reservations" method="post" id="new-reservation-form" class="new-reservation-form">
      <div class="new-property-form__field-wrapper">
        <label for="new-property-form__start">Start Date</label>
        <input type="text" name="start_date" placeholder="Start Date (YYYY-MM-DD)" id="new-property-form__start">
      </div>

      <div class="new-property-form__field-wrapper">
        <label for="new-property-form__end">End Date</label>
        <input type="text" name="end_date" placeholder="End Date (YYYY-MM-DD)" id="new-property-form__end">
      </div>

        <div class="new-property-form__field-wrapper">
            <button>Create</button>
            <a id="reservation-form__cancel" href="#">Cancel</a>
        </div>
        
    </form>
  `);

  window.$newReservationForm = $newReservationForm;

  $newReservationForm.on('submit', function (event) {
    event.preventDefault();

    views_manager.show('none');

    const data = $(this).serialize() + `&property_id=${window.newReservationId}`;
    submitReservation(data)
    .then(() => {
      propertyListings.clearListings();
      getAllReservations()
        .then(function(json) {
          propertyListings.addProperties(json.reservations, true);
          views_manager.show('listings');
        })
        .catch(error => console.error(error));
    })
    .catch((error) => {
      console.error(error);
      propertyListings.clearListings();
      getAllReservations()
        .then(function(json) {
          propertyListings.addProperties(json.reservations, true);
          views_manager.show('listings');
        })
        .catch(error => console.error(error));
    })
  });

  $('body').on('click', '#reservation-form__cancel', function() {
    views_manager.show('listings');
    return false;
  });
  
});